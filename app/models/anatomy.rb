class Anatomy < ApplicationRecord
  has_many :poses, through: :anatomy_poses
  has_many :users, through: :anatomy_users
end
