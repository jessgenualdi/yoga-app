class Sequence < ApplicationRecord
  has_many :user_sequences
  has_many :users, through: :user_sequences
  has_many :pose_sequences
  has_many :poses, through: :pose_sequences
end
