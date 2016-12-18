class AnatomyUser < ApplicationRecord
  belongs_to :anatomy
  belongs_to :user
end
