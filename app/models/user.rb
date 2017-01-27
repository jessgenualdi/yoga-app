class User < ApplicationRecord
  has_secure_password
  has_many :user_sequences
  has_many :sequences, through: :user_sequences
  has_many :anatomy_users
  has_many :anatomies, through: :anatomy_users
  has_many :user_poses
  has_many :poses, through: :user_poses
end
