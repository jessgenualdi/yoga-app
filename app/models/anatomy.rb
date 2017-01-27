class Anatomy < ApplicationRecord
  has_many :anatomy_poses
  has_many :poses, through: :anatomy_poses
  has_many :anatomy_users
  has_many :users, through: :anatomy_users
  has_many :user_poses
  has_many :users, through: :user_poses
end
