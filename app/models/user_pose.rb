class UserPose < ApplicationRecord
  belongs_to :pose
  belongs_to :user
end
