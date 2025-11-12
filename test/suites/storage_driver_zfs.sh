test_storage_driver_zfs() {
  local lxd_backend

  lxd_backend=$(storage_backend "$LXD_DIR")
  if [ "$lxd_backend" != "zfs" ]; then
    echo "==> SKIP: test_storage_driver_zfs only supports 'zfs', not ${lxd_backend}"
    return
  fi

  for i in $(seq 6); do
  echo "==> TEST ${i}: Storage driver ZFS with ext4"
  do_storage_driver_zfs ext4
  echo "==> TEST ${i}: Storage driver ZFS with xfs"
  do_storage_driver_zfs xfs
  done

#  for i in $(seq 6); do
#  echo "==> TEST ${i}: Storage driver ZFS with xfs"
#  do_storage_driver_zfs xfs
#  done

  #do_zfs_cross_pool_copy
  #do_zfs_delegate
}

do_zfs_delegate() {
  if ! zfs --help | grep -wF "zone" >/dev/null; then
    echo "==> SKIP: Skipping ZFS delegation tests due as installed version doesn't support it"
    return
  fi

  # Import image into default storage pool.
  ensure_import_testimage

  # Test enabling delegation.
  storage_pool="lxdtest-$(basename "${LXD_DIR}")"

  lxc init testimage c1
  lxc storage volume set "${storage_pool}" container/c1 zfs.delegate=true
  lxc start c1

  PID="$(lxc list -f csv -c p c1)"
  nsenter -t "${PID}" -U -- zfs list | grep -wF containers/c1

  # Confirm that ZFS dataset is empty when off.
  lxc stop -f c1
  lxc storage volume unset "${storage_pool}" container/c1 zfs.delegate
  lxc start c1

  PID="$(lxc list -f csv -c p c1)"
  ! nsenter -t "${PID}" -U -- zfs list | grep -wF containers/c1 || false

  lxc delete -f c1
}

do_zfs_cross_pool_copy() {
  local LXD_STORAGE_DIR

  LXD_STORAGE_DIR=$(mktemp -d -p "${TEST_DIR}" XXXXXXXXX)
  spawn_lxd "${LXD_STORAGE_DIR}" false

  # Import image into default storage pool.
  ensure_import_testimage

  lxc storage create lxdtest-"$(basename "${LXD_DIR}")"-dir dir

  lxc init testimage c1 -s lxdtest-"$(basename "${LXD_DIR}")"-dir
  lxc copy c1 c2 -s lxdtest-"$(basename "${LXD_DIR}")"

  # Check created zfs volume
  [ "$(zfs get -H -o value type lxdtest-"$(basename "${LXD_DIR}")/containers/c2")" = "filesystem" ]

  # Turn on block mode
  lxc storage set lxdtest-"$(basename "${LXD_DIR}")" volume.zfs.block_mode true

  lxc copy c1 c3 -s lxdtest-"$(basename "${LXD_DIR}")"

  # Check created zfs volume
  [ "$(zfs get -H -o value type lxdtest-"$(basename "${LXD_DIR}")/containers/c3")" = "volume" ]

  # Turn off block mode
  lxc storage unset lxdtest-"$(basename "${LXD_DIR}")" volume.zfs.block_mode

  lxc storage create lxdtest-"$(basename "${LXD_DIR}")"-zfs zfs

  lxc init testimage c4 -s lxdtest-"$(basename "${LXD_DIR}")"-zfs
  lxc copy c4 c5 -s lxdtest-"$(basename "${LXD_DIR}")"

  # Check created zfs volume
  [ "$(zfs get -H -o value type lxdtest-"$(basename "${LXD_DIR}")/containers/c5")" = "filesystem" ]

  # Turn on block mode
  lxc storage set lxdtest-"$(basename "${LXD_DIR}")" volume.zfs.block_mode true

  # Although block mode is turned on on the target storage pool, c6 will be created as a dataset.
  # That is because of optimized transfer which doesn't change the volume type.
  lxc copy c4 c6 -s lxdtest-"$(basename "${LXD_DIR}")"

  # Check created zfs volume
  [ "$(zfs get -H -o value type lxdtest-"$(basename "${LXD_DIR}")/containers/c6")" = "filesystem" ]

  # Turn off block mode
  lxc storage unset lxdtest-"$(basename "${LXD_DIR}")" volume.zfs.block_mode

  # Clean up
  lxc rm -f c1 c2 c3 c4 c5 c6
  lxc storage rm lxdtest-"$(basename "${LXD_DIR}")"-dir
  lxc storage rm lxdtest-"$(basename "${LXD_DIR}")"-zfs

  # shellcheck disable=SC2031
  kill_lxd "${LXD_STORAGE_DIR}"
}

do_storage_driver_zfs() {
  filesystem="$1"

  local LXD_STORAGE_DIR

  LXD_STORAGE_DIR=$(mktemp -d -p "${TEST_DIR}" XXXXXXXXX)
  spawn_lxd "${LXD_STORAGE_DIR}" false

  # Import image into default storage pool.
  ensure_import_testimage

  fingerprint=$(lxc image info testimage | awk '/^Fingerprint/ {print $2}')

  # Create non-block container
  lxc launch testimage c1

  # Check created container and image volumes
  zfs list lxdtest-"$(basename "${LXD_DIR}")/containers/c1"
  zfs list lxdtest-"$(basename "${LXD_DIR}")/images/${fingerprint}"
  zfs list lxdtest-"$(basename "${LXD_DIR}")/images/${fingerprint}@readonly"
  [ "$(zfs get -H -o value type lxdtest-"$(basename "${LXD_DIR}")/containers/c1")" = "filesystem" ]
  [ "$(zfs get -H -o value type lxdtest-"$(basename "${LXD_DIR}")/images/${fingerprint}")" = "filesystem" ]

  # Turn on block mode
  lxc storage set lxdtest-"$(basename "${LXD_DIR}")" volume.zfs.block_mode true

  # Set block filesystem
  lxc storage set lxdtest-"$(basename "${LXD_DIR}")" volume.block.filesystem "${filesystem}"

  # Create container in block mode and check online grow.
  lxc launch testimage c2 # << breaks here sometimes

  # Clean up
  lxc rm -f c1 c2

  # Turn off block mode
  lxc storage unset lxdtest-"$(basename "${LXD_DIR}")" volume.zfs.block_mode

  # shellcheck disable=SC2031
  kill_lxd "${LXD_STORAGE_DIR}"
}
