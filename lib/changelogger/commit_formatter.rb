require 'grit'

class CommitFormatter
  def initialize(commit)
    @commit = commit
  end

  def format
    "  - " +
      @commit.committed_date.strftime("%Y/%m/%d: ") +
      @commit.message.split(/\n/).first +
      " (" + @commit.author.name + ")"
  end
end
