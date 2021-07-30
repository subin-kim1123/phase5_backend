class ArticleSerializer < ActiveModel::Serializer
  attributes :id, :title, :author, :content, :url, :time
end
