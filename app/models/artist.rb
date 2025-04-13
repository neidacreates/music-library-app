class Artist < ApplicationRecord
    has_many :albums, dependent: :destroy

    validates :name, presence: true

end
