class User < ApplicationRecord
    include ActiveModel::SecurePassword
    has_secure_password

    has_many :collections, dependent: :destroy
    has_many :wishlists, dependent: :destroy

    validates :name, presence: true
    validates :email, presence: true
end