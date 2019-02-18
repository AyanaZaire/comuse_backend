class Member < ApplicationRecord

  # has_many :sections, foreign_key: 'student_id'
  has_many :enrolled, foreign_key: 'student_id'
  has_many :sections, through: :enrolled, foreign_key: 'student_id'
  has_many :sections, foreign_key: 'teacher_id'
  has_many :notifications, foreign_key: 'recipient_id'

  has_one_attached :photo

  # def photo_filename
  #   self.photo.filename.to_s if self.photo.attached?
  # end
  #
  # def photo_attached?
  #   self.photo.attached?
  # end

  has_secure_password
end
