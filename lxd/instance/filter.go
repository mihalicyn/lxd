package instance

import (
	"github.com/canonical/lxd/lxd/filter"
	"github.com/canonical/lxd/shared/api"
)

// Filter returns a filtered list of instances that match the given clauses.
func Filter(instances []*api.Instance, clauses []filter.Clause) []*api.Instance {
	filtered := []*api.Instance{}
	for _, instance := range instances {
		if !filter.Match(*instance, clauses) {
			continue
		}
		filtered = append(filtered, instance)
	}
	return filtered
}

// FilterFull returns a filtered list of full instances that match the given clauses.
func FilterFull(instances []*api.InstanceFull, clauses []filter.Clause) []*api.InstanceFull {
	filtered := []*api.InstanceFull{}
	for _, instance := range instances {
		if !filter.Match(*instance, clauses) {
			continue
		}
		filtered = append(filtered, instance)
	}
	return filtered
}
