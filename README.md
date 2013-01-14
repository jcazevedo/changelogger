# ChangeLogger

ChangeLogger is a simple [ChangeLog][1] generator from a git repository.

## Requirements

* [git][2]. Tested with 1.8.1

## Installation

### RubyGems

Make sure you have [gem][3] installed, and just run:

    $ gem install changelogger

### Source

Clone this repo and build the gem:

    $ git clone git://github.com/jcazevedo/changelogger.git
    $ gem build changelogger.gemspec
    $ gem install changelogger-0.0.3.gem

## Usage

ChangeLogger publishes a `changelogger` binary which you can run inside a git
repository, or pointing to a git repository through the first argument of its
`changelog` task in order to produce a changelog to the stdout:

    $ changelogger changelog ~/work/changelogger

If you want to save the output to a file, simply redirect the output:

    $ changelogger changelog ~/work/changelogger > CHANGELOG

Since the top commit of the current HEAD of the repository might not yet be
tagged, the `--top_version` option allows you to supply a string to be used as
the top version of the ChangeLog:

    $ changelogger changelog ~/work/changelogger --top_version v0.0.3

## Copyright

Copyright (c) 2013 Joao Azevedo. See LICENSE for details.

[1]: http://en.wikipedia.org/wiki/Changelog
[2]: http://git-scm.com/
[3]: http://rubygems.org/
