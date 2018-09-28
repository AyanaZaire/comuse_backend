class CategorySerializer < ActiveModel::Serializer
  attributes :id, :name, :img_url

  has_many :sections
end
