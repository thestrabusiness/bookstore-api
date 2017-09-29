class AuthorSerializer < ActiveModel::Serializer
  has_many :books
  has_many :published

  attributes :name
end
