class MyArticleSerializer < ActiveModel::Serializer
  attributes :id, :article
  has_one :user
end
