class User < ApplicationRecord
  has_secure_password
  has_many :sequences
  has_many :anatomies, though: :anatomyUsers
end
