class Lesson < ActiveRecord::Base
  has_many :votes, dependent: :destroy
  def up_votes
    votes.where(value: 1).count
  end

  def down_votes
    votes.where(value: -1).count
  end

  def points
    votes.sum(:value)
  end


end
