class Idea < ApplicationRecord
  acts_as_votable
  belongs_to :user
  def score
    self.get_upvotes.size - self.get_downvotes.size
  end
end
