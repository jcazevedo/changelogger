require 'grit'
require 'changelogger/commit_formatter'
require 'changelogger/commit_filter'

class ChangeLogger
  def initialize(repo_dir)
    @repo = Grit::Repo.new(repo_dir)
  end

  def changelog(formatter = CommitFormatter.new, filter = CommitFilter.new)
    tags = @repo.tags

    changelog = ""
    @repo.commits(@repo.head.name, false).each do |commit|
      tag = tags.find { |t| t.commit.id == commit.id }
      changelog += ("\n" + tag.name + "\n") unless tag.nil?
      changelog += (formatter.format(commit) + "\n") unless !filter.filter(commit)
    end

    changelog
  end
end
