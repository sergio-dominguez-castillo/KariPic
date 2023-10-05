class Photography < ApplicationRecord
  belongs_to :user
  has_many :images, as: :imageable
  has_many :comments
end
