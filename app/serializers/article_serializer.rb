class ArticleSerializer < ActiveModel::Serializer
  embed :id

  attributes :id, :title, :url, :body

  has_one :category
end