class Place < ApplicationRecord
  belongs_to :user
  validates :name, length: { minimum: 3 , too_short: "is too short (minimum is %{count} characters)"}
  validates :address, :description, presence: true
  paginates_per 3
end
