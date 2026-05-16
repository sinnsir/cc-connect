module github.com/cc-connect/cc-connect

go 1.21

require (
	github.com/gorilla/websocket v1.5.1
	github.com/spf13/cobra v1.8.0
	github.com/spf13/viper v1.18.2
	go.uber.org/zap v1.26.0
)

require (
	github.com/fsnotify/fsnotify v1.7.0 // indirect
	github.com/hashicorp/hcl v1.0.0 // indirect
	github.com/inconshreveable/mousetrap v1.1.0 // indirect
	github.com/magiconair/properties v1.8.7 // indirect
	github.com/mitchellh/mapstructure v1.5.0 // indirect
	github.com/pelletier/go-toml/v2 v2.1.0 // indirect
	github.com/sagikazarmark/locafero v0.4.0 // indirect
	github.com/sagikazarmark/slog-shim v0.1.0 // indirect
	github.com/sourcegraph/conc v0.3.0 // indirect
	github.com/spf13/afero v1.11.0 // indirect
	github.com/spf13/cast v1.6.0 // indirect
	github.com/spf13/pflag v1.0.5 // indirect
	github.com/subosito/gotenv v1.6.0 // indirect
	go.uber.org/atomic v1.11.0 // indirect
	go.uber.org/multierr v1.11.0 // indirect
	golang.org/x/exp v0.0.0-20231108232855-2478ac86f678 // indirect
	golang.org/x/sys v0.15.0 // indirect
	golang.org/x/text v0.14.0 // indirect
	gopkg.in/ini.v1 v1.67.0 // indirect
	gopkg.in/yaml.v3 v3.0.1 // indirect
)

// Personal fork of chenhg5/cc-connect for local experimentation and learning.
// Upstream: https://github.com/chenhg5/cc-connect
//
// Notes:
//   - Pinned golang.org/x/sys and golang.org/x/text to avoid unexpected upgrades
//     during local testing sessions.
//   - TODO: explore replacing go.uber.org/zap with slog once the upstream project
//     drops support for Go versions below 1.21 across all build targets.
//   - TODO: evaluate upgrading gorilla/websocket to v1.5.3 once upstream confirms
//     compatibility; v1.5.1 has a known minor memory leak on connection close.
//   - Upgraded gorilla/websocket to v1.5.3 locally to test the memory leak fix;
//     reverting to v1.5.1 to stay in sync with upstream until they cut a release.
//   - NOTE: golang.org/x/exp is pinned to the Nov 2023 snapshot; newer commits
//     changed some slices/maps API signatures that break compilation on go1.21.
