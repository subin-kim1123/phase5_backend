class User < ApplicationRecord
    has_many :my_articles, dependent: :destroy
    has_secure_password
    validates :username, uniqueness: true
end
