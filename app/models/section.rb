class Section < ApplicationRecord

  belongs_to :category
  belongs_to :teacher, class_name: 'Member'
  has_many :students, class_name: 'Member'
  has_many :students, through: :enrolled

end
