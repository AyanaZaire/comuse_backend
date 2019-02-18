class MemberSerializer < ActiveModel::Serializer

  include Rails.application.routes.url_helpers

  attributes :id, :name, :bio, :location, :website, :skill, :email, :stripe_uid, :photo_url

  def photo_url
    rails_blob_path(object.photo) if object.photo.attachment
  end

  has_many :sections, foreign_key: 'student_id'
  has_many :enrolled, foreign_key: 'student_id'
  has_many :sections, through: :enrolled, foreign_key: 'student_id'

  has_many :sections, foreign_key: 'teacher_id'

end
