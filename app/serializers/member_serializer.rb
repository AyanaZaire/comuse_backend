class MemberSerializer < ActiveModel::Serializer
  attributes :id, :name, :bio, :location, :website, :skill, :email
end
