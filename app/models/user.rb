class User < ApplicationRecord
  has_many :days
  has_many :exercises, through: :days
  has_many :routines

  validates :name, uniqueness: true
  validates :name, presence: true
end
