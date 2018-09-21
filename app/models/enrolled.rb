class Enrolled < ApplicationRecord
  belongs_to :student, class_name: 'Member'
  belongs_to :section
end
