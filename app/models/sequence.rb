class Sequence < ApplicationRecord
  has_many :users, through: :user_sequence
  has_many :poses, through: :pose_sequence
end
