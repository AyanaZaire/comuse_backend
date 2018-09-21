class CourseSerializer < ActiveModel::Serializer
  attributes :id, :date, :time

  belongs_to :section
end
