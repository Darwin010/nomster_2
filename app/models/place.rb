class Place < ApplicationRecord
  belongs_to :user
  has_many :comments
  validates :name, length: { minimum: 3 , too_short: "is too short (minimum is %{count} characters)"}
  validates :address, :description, presence: true
  geocoded_by :address
  after_validation :geocode
  paginates_per 3
end
