class Pose < ApplicationRecord
  has_many :anatomies, through: :anatomy_poses
  has_many :sequences, through: :pose_sequence
end
