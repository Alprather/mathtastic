class Vote < ActiveRecord::Base
  belongs_to :user
  belongs_to :lesson
  belongs_to :game
  belongs_to :classroom
  validates :value, inclusion: { in: [-1, 1], message: "%{value} is not a valid vote." }, presence: true
end
