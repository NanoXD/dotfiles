if status --is-interactive
  # Tools
  abbr -a co code
  abbr -a f fork

  # Homebrew
  abbr -a bi brew install

  # Git
  abbr -a g git
  abbr -a ga git add
  abbr -a gaa git add --all
  abbr -a gaap git add --all --patch
  abbr -a gc git commit
  abbr -a gca git commit --amend
  abbr -a gcan git commit --amend --no-edit
  abbr -a gcb git switch -c
  abbr -a gcl git clone
  abbr -a gco git checkout
  abbr -a gd git diff
  abbr -a gdc git diff --cached
  abbr -a gdw git diff --word-diff
  abbr -a gp git push
  abbr -a gpf git push --force-with-lease
  abbr -a gpr git pull-request --browse
  abbr -a gpu git pull --rebase
  abbr -a gs git status -sb
  abbr -a gin git introduced

  # Ruby
  abbr -a be bundle exec
  abbr -a bu bundle update

  # Node
  abbr -a y yarn
  abbr -a ya yarn add
  abbr -a yad yarn add --dev
  abbr -a yag yarn global add
  abbr -a yu yarn upgrade-interactive --latest

  # Rust
  abbr -a c cargo
  abbr -a cr cargo run
  abbr -a ct cargo test
end
