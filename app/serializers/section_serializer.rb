class SectionSerializer < ActiveModel::Serializer
  attributes :id, :title, :duration, :category_id, :teacher_id, :description, :location, :price, :materials_provided, :materials_to_bring, :faqs, :img_url, :photo_url

  # belongs_to :category
  # belongs_to :teacher, class_name: 'Member'
  # has_many :students, class_name: 'Member'
  # has_many :students, through: :enrolled, class_name: 'Member'

  def photo_url
    rails_blob_path(object.photo) if object.photo.attachment
  end

  belongs_to :category

  belongs_to :teacher, class_name: 'Member'

  has_many :enrolled

  has_many :courses

  # has_many :students, class_name: 'Member'
  has_many :students, through: :enrolled, class_name: 'Member'
end
