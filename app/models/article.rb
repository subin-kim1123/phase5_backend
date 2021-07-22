class Article < ApplicationRecord
  has_many :my_articles
  belongs_to :category
end
