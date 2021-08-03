class ArticleSerializer < ActiveModel::Serializer
  attributes :id, :title, :author, :content, :image, :description, :url, :time
end
