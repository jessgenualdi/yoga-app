class Pose < ApplicationRecord
  has_many :anatomy_poses
  has_many :anatomies, through: :anatomy_poses
  has_many :pose_sequences
  has_many :sequences, through: :pose_sequences
end
