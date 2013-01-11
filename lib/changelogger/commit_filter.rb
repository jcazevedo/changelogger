require 'grit'

class CommitFilter
  def initialize(commit)
    @commit = commit
  end

  def filter
    @commit.message.start_with? "Merge"
  end
end
