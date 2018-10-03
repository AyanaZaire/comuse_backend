class MemberSerializer < ActiveModel::Serializer
  attributes :id, :name, :bio, :location, :website, :skill, :email, :img_url, :stripe_uid

  has_many :sections, foreign_key: 'student_id'
  has_many :enrolled, foreign_key: 'student_id'
  has_many :sections, through: :enrolled, foreign_key: 'student_id'

  has_many :sections, foreign_key: 'teacher_id'
end
