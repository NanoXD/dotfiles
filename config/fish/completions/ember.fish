# ember update
complete -f -c ember -n '__fish_use_subcommand' -a update -d 'Updates ember-cli to the newest available version.'

# ember install
complete -f -c ember -n '__fish_use_subcommand' -a install -d 'Installs npm and bower packages.'
complete -f -c ember -n '__fish_use_subcommand' -a install:npm -d 'Installs npm packages.'
complete -f -c ember -n '__fish_use_subcommand' -a install:bower -d 'Installs bower packages.'
complete -f -c ember -n '__fish_use_subcommand' -a install:addon -d 'Installs an ember-cli addon from npm.'

# ember help
complete -f -c ember -n '__fish_use_subcommand' -a help -d 'Outputs the usage instructions for all commands or the provided command.'
complete -f -A -c ember -n '__fish_seen_subcommand_from help' -s v -l verbose -d 'verbose (Boolean) (Default: false)'

# ember new
complete -f -c ember -n '__fish_use_subcommand' -a new -d 'Creates a new folder and runs ember init in it.'
complete -f -A -c ember -n '__fish_seen_subcommand_from new' -s d -l dry-run -d 'dry-run (Boolean) (Default: false)'
complete -f -A -c ember -n '__fish_seen_subcommand_from new' -s v -l verbose -d 'verbose (Boolean) (Default: false)'
complete -f -A -c ember -n '__fish_seen_subcommand_from new' -s b -l blueprint -d 'blueprint (gitUrl, Path) (Default: app)'
complete -f -A -c ember -n '__fish_seen_subcommand_from new' -o sn -l skip-npm -d 'skip-npm (Boolean) (Default: false)'
complete -f -A -c ember -n '__fish_seen_subcommand_from new' -o sb -l skip-bower -d 'skip-bower (Boolean) (Default: false)'
complete -f -A -c ember -n '__fish_seen_subcommand_from new' -o sg -l skip-git -d 'skip-git (Boolean) (Default: false)'

# ember addon
complete -f -c ember -n '__fish_use_subcommand' -a addon -d 'Generates a new folder structure for building an addon, complete with test harness.'
complete -f -A -c ember -n '__fish_seen_subcommand_from addon' -s d -l dry-run -d 'dry-run (Boolean) (Default: false)'
complete -f -A -c ember -n '__fish_seen_subcommand_from addon' -s v -l verbose -d 'verbose (Boolean) (Default: false)'
complete -f -A -c ember -n '__fish_seen_subcommand_from addon' -s b -l blueprint -d 'blueprint (Path) (Default: addon)'
complete -f -A -c ember -n '__fish_seen_subcommand_from addon' -o sn -l skip-npm -d 'skip-npm (Boolean) (Default: false)'
complete -f -A -c ember -n '__fish_seen_subcommand_from addon' -o sb -l skip-bower -d 'skip-bower (Boolean) (Default: false)'
complete -f -A -c ember -n '__fish_seen_subcommand_from addon' -o sg -l skip-git -d 'skip-git (Boolean) (Default: false)'

# ember init
complete -f -c ember -n '__fish_use_subcommand' -a init -d 'Creates a new ember-cli project in the current folder.'
complete -f -A -c ember -n '__fish_seen_subcommand_from init' -s d -l dry-run -d 'dry-run (Boolean) (Default: false)'
complete -f -A -c ember -n '__fish_seen_subcommand_from init' -s v -l verbose -d 'verbose (Boolean) (Default: false)'
complete -f -A -c ember -n '__fish_seen_subcommand_from init' -s b -l blueprint -d 'blueprint (gitUrl, Path)'
complete -f -A -c ember -n '__fish_seen_subcommand_from init' -o sn -l skip-npm -d 'skip-npm (Boolean) (Default: false)'
complete -f -A -c ember -n '__fish_seen_subcommand_from init' -o sb -l skip-bower -d 'skip-bower (Boolean) (Default: false)'
complete -f -A -c ember -n '__fish_seen_subcommand_from init' -s n -l name -d 'name (String) (Default: )'

# ember build
complete -f -c ember -n '__fish_use_subcommand' -a build -d 'Generates new code from blueprints.'
complete -f -A -c ember -n '__fish_seen_subcommand_from build' -s e -l environment -d 'environment (String) (Default: development)'
complete -f -A -c ember -n '__fish_seen_subcommand_from build' -s o -l output-path -d 'output-path (Path) (Default: dist/)'
complete -f -A -c ember -n '__fish_seen_subcommand_from build' -s w -l watch -d 'watch (Boolean) (Default: false)'
complete -f -A -c ember -n '__fish_seen_subcommand_from build' -l watcher -d 'watcher (String)'

# ember generate
# TODO: Give a list of available blueprints for completing the generate command
#ember help generate | sed -e '1,/Available blueprints/d'
#ember help generate | sed -e '1,/ember-cli:/d' | sed 'N;s/\n/,/'
complete -f -c ember -n '__fish_use_subcommand' -a generate -d 'Generates new code from blueprints.'
complete -f -A -c ember -n '__fish_seen_subcommand_from generate' -s d -l dry-run -d 'dry-run (Boolean) (Default: false)'
complete -f -A -c ember -n '__fish_seen_subcommand_from generate' -s v -l verbose -d 'verbose (Boolean) (Default: false)'
complete -f -A -c ember -n '__fish_seen_subcommand_from generate' -s p -l pod -d 'pod (Boolean) (Default: false)'

# ember destroy
complete -f -c ember -n '__fish_use_subcommand' -a destroy -d 'Destroys code generated by `generate` command.'
complete -f -A -c ember -n '__fish_seen_subcommand_from destroy' -s d -l dry-run -d 'dry-run (Boolean) (Default: false)'
complete -f -A -c ember -n '__fish_seen_subcommand_from destroy' -s v -l verbose -d 'verbose (Boolean) (Default: false)'
complete -f -A -c ember -n '__fish_seen_subcommand_from destroy' -s p -l pod -d 'pod (Boolean) (Default: false)'

# ember version
complete -f -c ember -n '__fish_use_subcommand' -a version -d 'Outputs ember-cli version.'
complete -f -A -c ember -n '__fish_use_subcommand' -s v -l version -d 'Outputs ember-cli version.'
complete -f -A -c ember -n '__fish_seen_subcommand_from version' -l verbose -d 'verbose (Boolean) (Default: false)'

# ember test
complete -f -c ember -n '__fish_use_subcommand' -a test -d 'Runs your apps test suite.'
complete -f -A -c ember -n '__fish_seen_subcommand_from test' -s e -l environment -d 'environment (String) (Default: test)'
complete -f -A -c ember -n '__fish_seen_subcommand_from test' -s c -o cf -l config-file -d 'config-file (String) (Default: ./testem.json)'
complete -f -A -c ember -n '__fish_seen_subcommand_from test' -s s -l server -d 'server (Boolean) (Default: false)'
complete -f -A -c ember -n '__fish_seen_subcommand_from test' -s p -l port -d 'The port to use when running with --server.'
complete -f -A -c ember -n '__fish_seen_subcommand_from test' -s f -l filter -d 'A string to filter tests to run.'
complete -f -A -c ember -n '__fish_seen_subcommand_from test' -s m -l module -d 'The name of a test module to run.'
complete -f -A -c ember -n '__fish_seen_subcommand_from test' -s w -l watcher -d 'watcher (String) (Default: events)'

# ember serve
complete -f -c ember -n '__fish_use_subcommand' -a serve -d 'Builds and serves your app, rebuilding on file changes.'
complete -f -A -c ember -n '__fish_seen_subcommand_from serve' -s p -l port -d 'port (Number) (Default: 4200)'
complete -f -A -c ember -n '__fish_seen_subcommand_from serve' -s H -l host -d 'host (String) (Default: 0.0.0.0)'
complete -f -A -c ember -n '__fish_seen_subcommand_from serve' -o pr -l proxy -d 'proxy (String)'
complete -f -A -c ember -n '__fish_seen_subcommand_from serve' -o inspr -l insecure-proxy -d 'Set false to proxy self-signed SSL certificates'
complete -f -A -c ember -n '__fish_seen_subcommand_from serve' -s w -l watcher -d 'watcher (String) (Default: events)'
complete -f -A -c ember -n '__fish_seen_subcommand_from serve' -o lr -l live-reload -d 'live-reload (Boolean) (Default: true)'
complete -f -A -c ember -n '__fish_seen_subcommand_from serve' -o lrp -l live-reload-port -d 'live-reload-port (Number) (Defaults to port number + 31529)'
complete -f -A -c ember -n '__fish_seen_subcommand_from serve' -s e -l environment -d 'environment (String) (Default: development)'
complete -f -A -c ember -n '__fish_seen_subcommand_from serve' -o out -l output-path -d 'output-path (Path) (Default: dist/)'