class SectionSerializer < ActiveModel::Serializer
  attributes :id, :title, :duration, :category_id, :teacher_id, :description, :location, :price, :materials_provided, :materials_to_bring, :faqs

  belongs_to :category
  belongs_to :teacher, class_name: 'Member'
  has_many :students, class_name: 'Member'
  has_many :students, through: :enrolled
end
