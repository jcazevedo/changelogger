require 'grit'
require 'changelogger/commit_formatter'
require 'changelogger/commit_filter'
require 'changelogger/header_formatter'

class ChangeLogger
  def initialize(repo_dir, is_bare = false)
    @repo = Grit::Repo.new(repo_dir, :is_bare => is_bare)
  end

  def changelog(options = {})
    commit_formatter = options[:commit_formatter] || CommitFormatter.new
    commit_filter = options[:commit_filter] || CommitFilter.new
    header_formatter = options[:header_formatter] || HeaderFormatter.new

    tags = @repo.tags

    changelog = ""
    changelog += header_formatter.format(options[:top_version]) unless options[:top_version].nil?

    @repo.commits(@repo.head.name, false).each do |commit|
      tag = tags.find { |t| t.commit.id == commit.id }
      changelog += header_formatter.format(tag.name) unless tag.nil?
      changelog += commit_formatter.format(commit) + "\n" unless !commit_filter.filter(commit)
    end

    changelog
  end
end
