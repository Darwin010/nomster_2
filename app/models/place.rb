class Place < ApplicationRecord
  belongs_to :user
  validates :name, presence: true
  paginates_per 3
end
