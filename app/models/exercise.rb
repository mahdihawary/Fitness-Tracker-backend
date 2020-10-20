class Exercise < ApplicationRecord
  has_many :days
  has_many :users, through: :days
end
