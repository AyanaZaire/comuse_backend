class EnrolledSerializer < ActiveModel::Serializer
  attributes :id, :student_id, :section_id

  belongs_to :student, class_name: 'Member'
  belongs_to :section
end
