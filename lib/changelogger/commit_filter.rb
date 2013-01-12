require 'grit'

class CommitFilter
  def filter(commit)
    !commit.message.start_with? "Merge"
  end
end
