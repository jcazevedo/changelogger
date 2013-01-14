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
    $ gem install changelogger-0.0.1.gem

## Usage

- [ ] Checkbox!

ChangeLogger publishes a `changelogger` binary which you can run inside a git
repository, or pointing to a git repository through its first argument in order
to produce a changelog to the stdout:

    $ changelogger ~/work/changelogger

If you want to save the output to a file, simply redirect the output:

    $ changelogger ~/work/changelogger > CHANGELOG

## Copyright

Copyright (c) 2013 Joao Azevedo. See LICENSE for details.

[1]: http://en.wikipedia.org/wiki/Changelog
[2]: http://git-scm.com/
[3]: http://rubygems.org/
