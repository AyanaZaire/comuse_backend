class EnrolledSerializer < ActiveModel::Serializer
  attributes :id, :student_id, :section_id, :course_id

  belongs_to :student, class_name: 'Member'
  belongs_to :section
  belongs_to :course

  # has_many :courses, through: :section
end
