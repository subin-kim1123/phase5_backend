class ArticleSerializer < ActiveModel::Serializer
  attributes :id, :title, :author, :content, :url, :time
  has_many :my_articles
end
