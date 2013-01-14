require 'test/unit'
require 'changelogger'

class ChangeLoggerTest < Test::Unit::TestCase
  def test_changelog
    changelogger =
      ChangeLogger.new(File.join(File.dirname(__FILE__), *%w[dot_git]),
                       :is_bare => true)

    expected_changelog = <<CHANGELOG
  - 2013/01/14: Add 'is_bare' option to ChangeLogger constructor. (Joao Azevedo)
  - 2013/01/14: Add LICENSE to gemspec. (Joao Azevedo)
  - 2013/01/14: Update README to reflect the current version. (Joao Azevedo)
  - 2013/01/14: Use branch in head instead of master by default. (Joao Azevedo)
  - 2013/01/14: Enough testing. (Joao Azevedo)
  - 2013/01/14: Testing stuff. (Joao Azevedo)
  - 2013/01/14: Update LICENSE date. (Joao Azevedo)
  - 2013/01/14: Update copyright date. (Joao Azevedo)
  - 2013/01/12: Change the interface and semantics a bit. (Joao Azevedo)

v0.0.2
  - 2013/01/12: Update to 0.0.2 to fix issue of gem with wrong homepage pushed to RubyGems. (Joao Azevedo)
  - 2013/01/12: Update README. (Joao Azevedo)
  - 2013/01/12: Update CHANGELOG. (Joao Azevedo)

v0.0.1
  - 2013/01/12: Change gem homepage. (Joao Azevedo)
  - 2013/01/12: Add CHANGELOG. (Joao Azevedo)
  - 2013/01/11: Update version to 0.0.1. (Joao Azevedo)
  - 2013/01/11: Update README with requirements. (Joao Azevedo)
  - 2013/01/11: Add README. (Joao Azevedo)
  - 2013/01/11: Add LICENSE. (Joao Azevedo)
  - 2013/01/11: Initial commit. (Joao Azevedo)
CHANGELOG

    assert_equal changelogger.changelog, expected_changelog
  end

  def test_changelog_with_top_version
    changelogger =
      ChangeLogger.new(File.join(File.dirname(__FILE__), *%w[dot_git]),
                       :is_bare => true)

    expected_changelog = <<CHANGELOG

v0.0.3
  - 2013/01/14: Add 'is_bare' option to ChangeLogger constructor. (Joao Azevedo)
  - 2013/01/14: Add LICENSE to gemspec. (Joao Azevedo)
  - 2013/01/14: Update README to reflect the current version. (Joao Azevedo)
  - 2013/01/14: Use branch in head instead of master by default. (Joao Azevedo)
  - 2013/01/14: Enough testing. (Joao Azevedo)
  - 2013/01/14: Testing stuff. (Joao Azevedo)
  - 2013/01/14: Update LICENSE date. (Joao Azevedo)
  - 2013/01/14: Update copyright date. (Joao Azevedo)
  - 2013/01/12: Change the interface and semantics a bit. (Joao Azevedo)

v0.0.2
  - 2013/01/12: Update to 0.0.2 to fix issue of gem with wrong homepage pushed to RubyGems. (Joao Azevedo)
  - 2013/01/12: Update README. (Joao Azevedo)
  - 2013/01/12: Update CHANGELOG. (Joao Azevedo)

v0.0.1
  - 2013/01/12: Change gem homepage. (Joao Azevedo)
  - 2013/01/12: Add CHANGELOG. (Joao Azevedo)
  - 2013/01/11: Update version to 0.0.1. (Joao Azevedo)
  - 2013/01/11: Update README with requirements. (Joao Azevedo)
  - 2013/01/11: Add README. (Joao Azevedo)
  - 2013/01/11: Add LICENSE. (Joao Azevedo)
  - 2013/01/11: Initial commit. (Joao Azevedo)
CHANGELOG

    assert_equal changelogger.changelog(:top_version => "v0.0.3"), expected_changelog
  end
end
