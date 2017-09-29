class PublishingHouseSerializer < ActiveModel::Serializer
  has_many :published

  attributes :name, :discount
end
