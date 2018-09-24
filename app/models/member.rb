class Member < ApplicationRecord

  # has_many :sections, foreign_key: 'student_id'

  has_many :enrolled, foreign_key: 'student_id'
  has_many :sections, through: :enrolled, foreign_key: 'student_id'

  has_many :sections, foreign_key: 'teacher_id'

  has_secure_password
end
