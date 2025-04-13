class Collection < ApplicationRecord
  belongs_to :user

  has_many :collection_albums, dependent: :destroy
  has_many :albums, through: :collection_albums

  validates :name, presence: true
end
