class CourseSerializer < ActiveModel::Serializer
  attributes :id, :date, :time, :student_max, :section_id

  belongs_to :section
  has_many :enrolled
end
