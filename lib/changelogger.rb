require 'grit'
require 'changelogger/commit_formatter'
require 'changelogger/commit_filter'

class ChangeLogger
  def initialize(repo_dir)
    @repo = Grit::Repo.new(repo_dir)
  end

  def changelog
    tags = @repo.tags

    changelog = ""
    @repo.commits('master', false).each do |commit|
      tag = tags.find { |t| t.commit.id == commit.id }
      changelog += ("\n" + tag.name + "\n") unless tag.nil?
      changelog += CommitFormatter.new(commit).format + "\n" unless CommitFilter.new(commit).filter
    end

    changelog
  end
end
