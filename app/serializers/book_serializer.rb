class BookSerializer < ActiveModel::Serializer
  belongs_to :author
  belongs_to :publisher

  attributes :title, :price
end
