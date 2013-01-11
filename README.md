# ChangeLogger

ChangeLogger is a simple [ChangeLog][1] generator from a git repository.

## Installation

### RubyGems

Make sure you have [gem][1] installed, and just run:

    gem install changelogger

### Source

Clone this repo and build the gem:

    git clone git://github.com/jcazevedo/changelogger.git
    gem build changelogger.gemspec
    gem install changelogger-0.0.0.gem

## Usage

ChangeLogger publishes a `changelogger` binary which you can run inside a git
repository, or pointing to a git repository through its first argument in order
to produce a changelog to the stdout:

    changelogger ~/work/changelogger

If you want to save the output to a file, simply redirect the output:

    changelogger ~/work/changelogger > CHANGELOG

[1]: http://en.wikipedia.org/wiki/Changelog
[2]: http://rubygems.org/
