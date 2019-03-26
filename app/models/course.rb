class Course < ApplicationRecord
  belongs_to :section
  # has_many :enrolled
end
