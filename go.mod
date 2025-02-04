module github.com/canonical/lxd

go 1.23.3

require (
	github.com/NVIDIA/nvidia-container-toolkit v1.17.4
	github.com/Rican7/retry v0.3.1
	github.com/armon/go-proxyproto v0.1.0
	github.com/canonical/go-dqlite/v3 v3.0.0
	github.com/checkpoint-restore/go-criu/v6 v6.3.0
	github.com/dell/goscaleio v1.18.0
	github.com/digitalocean/go-qemu v0.0.0-20230711162256-2e3d0186973e
	github.com/digitalocean/go-smbios v0.0.0-20180907143718-390a4f403a8e
	github.com/dustinkirkland/golang-petname v0.0.0-20240428194347-eebcea082ee0
	github.com/flosch/pongo2 v0.0.0-20200913210552-0d938eb266f3
	github.com/fvbommel/sortorder v1.1.0
	github.com/go-acme/lego/v4 v4.21.0
	github.com/go-chi/chi/v5 v5.2.0
	github.com/go-jose/go-jose/v4 v4.0.4
	github.com/google/gopacket v1.1.19
	github.com/google/uuid v1.6.0
	github.com/gorilla/mux v1.8.1
	github.com/gorilla/securecookie v1.1.2
	github.com/gorilla/websocket v1.5.1
	github.com/gosexy/gettext v0.0.0-20160830220431-74466a0a0c4a
	github.com/j-keck/arping v1.0.3
	github.com/jaypipes/pcidb v1.0.1
	github.com/jochenvg/go-udev v0.0.0-20240801134859-b65ed646224b
	github.com/juju/gomaasapi v0.0.0-20200602032615-aa561369c767
	github.com/kballard/go-shellquote v0.0.0-20180428030007-95032a82bc51
	github.com/lxc/go-lxc v0.0.0-20240606200241-27b3d116511f
	github.com/mattn/go-colorable v0.1.14
	github.com/mattn/go-sqlite3 v1.14.24
	github.com/mdlayher/ndp v1.1.0
	github.com/mdlayher/netx v0.0.0-20230430222610-7e21880baee8
	github.com/mdlayher/vsock v1.2.1
	github.com/miekg/dns v1.1.63
	github.com/minio/minio-go/v7 v7.0.84
	github.com/mitchellh/mapstructure v1.5.0
	github.com/oklog/ulid/v2 v2.1.0
	github.com/olekukonko/tablewriter v0.0.5
	github.com/openfga/api/proto v0.0.0-20250107154247-c22e6db5c4f5
	github.com/openfga/language/pkg/go v0.2.0-beta.2.0.20241115164311-10e575c8e47c
	github.com/openfga/openfga v1.8.4
	github.com/osrg/gobgp/v3 v3.34.0
	github.com/pkg/errors v0.9.1
	github.com/pkg/sftp v1.13.7
	github.com/pkg/xattr v0.4.10
	github.com/robfig/cron/v3 v3.0.1
	github.com/sirupsen/logrus v1.9.3
	github.com/spf13/cobra v1.8.1
	github.com/stretchr/testify v1.10.0
	github.com/syndtr/gocapability v0.0.0-20200815063812-42c35b437635
	github.com/temporalio/ui-server/v2 v2.34.0
	github.com/vishvananda/netlink v1.3.0
	github.com/zitadel/oidc/v3 v3.34.1
	go.starlark.net v0.0.0-20241125201518-c05ff208a98f
	go.temporal.io/api v1.43.0
	go.temporal.io/sdk v1.30.1
	go.temporal.io/server v1.26.2
	go.uber.org/zap v1.27.0
	golang.org/x/crypto v0.32.0
	golang.org/x/exp v0.0.0-20241217172543-b2144cdd0a67
	golang.org/x/oauth2 v0.25.0
	golang.org/x/sync v0.10.0
	golang.org/x/sys v0.29.0
	golang.org/x/term v0.28.0
	golang.org/x/text v0.21.0
	golang.org/x/tools v0.29.0
	google.golang.org/protobuf v1.36.4
	gopkg.in/tomb.v2 v2.0.0-20161208151619-d5d1b5820637
	gopkg.in/yaml.v2 v2.4.0
	k8s.io/utils v0.0.0-20241210054802-24370beab758
	tags.cncf.io/container-device-interface v0.8.0
	tags.cncf.io/container-device-interface/specs-go v0.8.0
)

require (
	cel.dev/expr v0.19.1 // indirect
	cloud.google.com/go v0.116.0 // indirect
	cloud.google.com/go/auth v0.13.0 // indirect
	cloud.google.com/go/auth/oauth2adapt v0.2.6 // indirect
	cloud.google.com/go/compute/metadata v0.6.0 // indirect
	cloud.google.com/go/iam v1.2.1 // indirect
	cloud.google.com/go/storage v1.43.0 // indirect
	filippo.io/edwards25519 v1.1.0 // indirect
	github.com/NVIDIA/go-nvlib v0.7.0 // indirect
	github.com/NVIDIA/go-nvml v0.12.4-1 // indirect
	github.com/Yiling-J/theine-go v0.6.0 // indirect
	github.com/antlr4-go/antlr/v4 v4.13.1 // indirect
	github.com/apache/thrift v0.16.0 // indirect
	github.com/aws/aws-sdk-go v1.53.15 // indirect
	github.com/benbjohnson/clock v1.3.0 // indirect
	github.com/beorn7/perks v1.0.1 // indirect
	github.com/blang/semver/v4 v4.0.0 // indirect
	github.com/bmatcuk/doublestar/v4 v4.8.0 // indirect
	github.com/cactus/go-statsd-client/statsd v0.0.0-20200423205355-cb0885a1018c // indirect
	github.com/cactus/go-statsd-client/v5 v5.1.0 // indirect
	github.com/cenkalti/backoff/v4 v4.3.0 // indirect
	github.com/cespare/xxhash/v2 v2.3.0 // indirect
	github.com/coreos/go-oidc/v3 v3.11.0 // indirect
	github.com/cpuguy83/go-md2man/v2 v2.0.6 // indirect
	github.com/davecgh/go-spew v1.1.2-0.20180830191138-d8f796af33cc // indirect
	github.com/dgryski/go-farm v0.0.0-20240924180020-3414d57e47da // indirect
	github.com/digitalocean/go-libvirt v0.0.0-20241216201552-9fbdb61a21af // indirect
	github.com/dustin/go-humanize v1.0.1 // indirect
	github.com/eapache/channels v1.1.0 // indirect
	github.com/eapache/queue v1.1.0 // indirect
	github.com/emirpasic/gods v1.18.1 // indirect
	github.com/envoyproxy/protoc-gen-validate v1.1.0 // indirect
	github.com/facebookgo/clock v0.0.0-20150410010913-600d898af40a // indirect
	github.com/felixge/httpsnoop v1.0.4 // indirect
	github.com/fsnotify/fsnotify v1.8.0 // indirect
	github.com/go-ini/ini v1.67.0 // indirect
	github.com/go-logr/logr v1.4.2 // indirect
	github.com/go-logr/stdr v1.2.2 // indirect
	github.com/go-sql-driver/mysql v1.8.1 // indirect
	github.com/goccy/go-json v0.10.4 // indirect
	github.com/gocql/gocql v1.6.0 // indirect
	github.com/gogo/protobuf v1.3.2 // indirect
	github.com/golang-jwt/jwt v3.2.2+incompatible // indirect
	github.com/golang-jwt/jwt/v4 v4.5.1 // indirect
	github.com/golang/groupcache v0.0.0-20210331224755-41bb18bfe9da // indirect
	github.com/golang/mock v1.6.0 // indirect
	github.com/golang/snappy v0.0.4 // indirect
	github.com/gomarkdown/markdown v0.0.0-20241105142532-d03b89096d81 // indirect
	github.com/google/cel-go v0.22.1 // indirect
	github.com/google/renameio v1.0.1 // indirect
	github.com/google/s2a-go v0.1.8 // indirect
	github.com/googleapis/enterprise-certificate-proxy v0.3.4 // indirect
	github.com/googleapis/gax-go/v2 v2.14.0 // indirect
	github.com/grpc-ecosystem/go-grpc-middleware v1.4.0 // indirect
	github.com/grpc-ecosystem/go-grpc-middleware/v2 v2.2.0 // indirect
	github.com/grpc-ecosystem/grpc-gateway/v2 v2.25.1 // indirect
	github.com/hailocab/go-hostpool v0.0.0-20160125115350-e80d13ce29ed // indirect
	github.com/hashicorp/errwrap v1.1.0 // indirect
	github.com/hashicorp/go-multierror v1.1.1 // indirect
	github.com/hashicorp/golang-lru/v2 v2.0.7 // indirect
	github.com/hashicorp/hcl v1.0.0 // indirect
	github.com/iancoleman/strcase v0.3.0 // indirect
	github.com/inconshreveable/mousetrap v1.1.0 // indirect
	github.com/jackc/pgpassfile v1.0.0 // indirect
	github.com/jackc/pgservicefile v0.0.0-20240606120523-5a60cdf6a761 // indirect
	github.com/jackc/pgx/v5 v5.7.2 // indirect
	github.com/jackc/puddle/v2 v2.2.2 // indirect
	github.com/jkeiser/iter v0.0.0-20200628201005-c8aa0ae784d1 // indirect
	github.com/jmespath/go-jmespath v0.4.0 // indirect
	github.com/jmoiron/sqlx v1.3.4 // indirect
	github.com/josharian/intern v1.0.0 // indirect
	github.com/juju/collections v1.0.4 // indirect
	github.com/juju/errors v1.0.0 // indirect
	github.com/juju/loggo v1.0.0 // indirect
	github.com/juju/mgo/v2 v2.0.2 // indirect
	github.com/juju/schema v1.2.0 // indirect
	github.com/juju/version v0.0.0-20210303051006-2015802527a8 // indirect
	github.com/k-sone/critbitgo v1.4.0 // indirect
	github.com/klauspost/compress v1.17.11 // indirect
	github.com/klauspost/cpuid/v2 v2.2.9 // indirect
	github.com/kr/fs v0.1.0 // indirect
	github.com/labstack/echo/v4 v4.9.1 // indirect
	github.com/labstack/gommon v0.4.0 // indirect
	github.com/lib/pq v1.10.9 // indirect
	github.com/magiconair/properties v1.8.9 // indirect
	github.com/mailru/easyjson v0.7.7 // indirect
	github.com/mattn/go-isatty v0.0.20 // indirect
	github.com/mattn/go-runewidth v0.0.16 // indirect
	github.com/mdlayher/socket v0.5.1 // indirect
	github.com/minio/md5-simd v1.1.2 // indirect
	github.com/mitchellh/go-homedir v1.1.0 // indirect
	github.com/muhlemmer/gu v0.3.1 // indirect
	github.com/muhlemmer/httpforwarded v0.1.0 // indirect
	github.com/munnerz/goautoneg v0.0.0-20191010083416-a7dc8b61c822 // indirect
	github.com/natefinch/wrap v0.2.0 // indirect
	github.com/ncruces/go-strftime v0.1.9 // indirect
	github.com/nexus-rpc/sdk-go v0.0.12 // indirect
	github.com/olivere/elastic/v7 v7.0.32 // indirect
	github.com/opencontainers/runtime-spec v1.2.0 // indirect
	github.com/opencontainers/runtime-tools v0.9.1-0.20221107090550-2e043c6bd626 // indirect
	github.com/opentracing/opentracing-go v1.2.1-0.20220228012449-10b1cf09e00b // indirect
	github.com/pborman/uuid v1.2.1 // indirect
	github.com/pelletier/go-toml/v2 v2.2.3 // indirect
	github.com/pmezard/go-difflib v1.0.1-0.20181226105442-5d4384ee4fb2 // indirect
	github.com/prometheus/client_golang v1.20.5 // indirect
	github.com/prometheus/client_model v0.6.1 // indirect
	github.com/prometheus/common v0.61.0 // indirect
	github.com/prometheus/procfs v0.15.1 // indirect
	github.com/qustavo/sqlhooks/v2 v2.1.0 // indirect
	github.com/rcrowley/go-metrics v0.0.0-20141108142129-dee209f2455f // indirect
	github.com/remyoudompheng/bigfft v0.0.0-20230129092748-24d4a6f8daec // indirect
	github.com/rivo/uniseg v0.4.7 // indirect
	github.com/robfig/cron v1.2.0 // indirect
	github.com/rs/cors v1.11.1 // indirect
	github.com/rs/xid v1.6.0 // indirect
	github.com/russross/blackfriday/v2 v2.1.0 // indirect
	github.com/sagikazarmark/locafero v0.6.0 // indirect
	github.com/sagikazarmark/slog-shim v0.1.0 // indirect
	github.com/sony/gobreaker v1.0.0 // indirect
	github.com/sourcegraph/conc v0.3.0 // indirect
	github.com/spf13/afero v1.11.0 // indirect
	github.com/spf13/cast v1.7.1 // indirect
	github.com/spf13/pflag v1.0.5 // indirect
	github.com/spf13/viper v1.19.0 // indirect
	github.com/stoewer/go-strcase v1.3.0 // indirect
	github.com/stretchr/objx v0.5.2 // indirect
	github.com/subosito/gotenv v1.6.0 // indirect
	github.com/temporalio/ringpop-go v0.0.0-20241119001152-e505ebd8f887 // indirect
	github.com/temporalio/sqlparser v0.0.0-20231115171017-f4060bcfa6cb // indirect
	github.com/temporalio/tchannel-go v1.22.1-0.20240528171429-1db37fdea938 // indirect
	github.com/twmb/murmur3 v1.1.8 // indirect
	github.com/uber-common/bark v1.0.0 // indirect
	github.com/uber-go/tally/v4 v4.1.17-0.20240412215630-22fe011f5ff0 // indirect
	github.com/valyala/bytebufferpool v1.0.0 // indirect
	github.com/valyala/fasttemplate v1.2.1 // indirect
	github.com/vishvananda/netns v0.0.5 // indirect
	github.com/zeebo/xxh3 v1.0.2 // indirect
	github.com/zitadel/logging v0.6.1 // indirect
	github.com/zitadel/schema v1.3.0 // indirect
	go.opencensus.io v0.24.0 // indirect
	go.opentelemetry.io/auto/sdk v1.1.0 // indirect
	go.opentelemetry.io/contrib/instrumentation/google.golang.org/grpc/otelgrpc v0.58.0 // indirect
	go.opentelemetry.io/contrib/instrumentation/net/http/otelhttp v0.58.0 // indirect
	go.opentelemetry.io/otel v1.33.0 // indirect
	go.opentelemetry.io/otel/exporters/otlp/otlpmetric/otlpmetricgrpc v1.31.0 // indirect
	go.opentelemetry.io/otel/exporters/otlp/otlptrace v1.33.0 // indirect
	go.opentelemetry.io/otel/exporters/otlp/otlptrace/otlptracegrpc v1.33.0 // indirect
	go.opentelemetry.io/otel/exporters/prometheus v0.53.0 // indirect
	go.opentelemetry.io/otel/metric v1.33.0 // indirect
	go.opentelemetry.io/otel/sdk v1.33.0 // indirect
	go.opentelemetry.io/otel/sdk/metric v1.31.0 // indirect
	go.opentelemetry.io/otel/trace v1.33.0 // indirect
	go.opentelemetry.io/proto/otlp v1.5.0 // indirect
	go.temporal.io/version v0.3.0 // indirect
	go.uber.org/atomic v1.11.0 // indirect
	go.uber.org/dig v1.17.1 // indirect
	go.uber.org/fx v1.22.0 // indirect
	go.uber.org/mock v0.5.0 // indirect
	go.uber.org/multierr v1.11.0 // indirect
	golang.org/x/mod v0.22.0 // indirect
	golang.org/x/net v0.34.0 // indirect
	golang.org/x/time v0.8.0 // indirect
	gonum.org/v1/gonum v0.15.1 // indirect
	google.golang.org/api v0.214.0 // indirect
	google.golang.org/genproto v0.0.0-20241021214115-324edc3d5d38 // indirect
	google.golang.org/genproto/googleapis/api v0.0.0-20250102185135-69823020774d // indirect
	google.golang.org/genproto/googleapis/rpc v0.0.0-20250102185135-69823020774d // indirect
	google.golang.org/grpc v1.69.2 // indirect
	gopkg.in/go-jose/go-jose.v2 v2.6.3 // indirect
	gopkg.in/inf.v0 v0.9.1 // indirect
	gopkg.in/ini.v1 v1.67.0 // indirect
	gopkg.in/mgo.v2 v2.0.0-20190816093944-a6b53ec6cb22 // indirect
	gopkg.in/validator.v2 v2.0.1 // indirect
	gopkg.in/yaml.v3 v3.0.1 // indirect
	modernc.org/gc/v3 v3.0.0-20240304020402-f0dba7c97c2b // indirect
	modernc.org/libc v1.55.3 // indirect
	modernc.org/mathutil v1.6.0 // indirect
	modernc.org/memory v1.8.0 // indirect
	modernc.org/sqlite v1.34.4 // indirect
	modernc.org/strutil v1.2.0 // indirect
	modernc.org/token v1.1.0 // indirect
	sigs.k8s.io/yaml v1.4.0 // indirect
)

replace go.temporal.io/server => ./temporal
