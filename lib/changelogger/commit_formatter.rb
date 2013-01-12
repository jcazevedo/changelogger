require 'grit'

class CommitFormatter
  def format(commit)
    "  - " +
      commit.committed_date.strftime("%Y/%m/%d: ") +
      commit.message.split(/\n/).first +
      " (" + commit.author.name + ")"
  end
end
