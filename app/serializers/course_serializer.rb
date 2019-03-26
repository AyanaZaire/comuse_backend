class CourseSerializer < ActiveModel::Serializer
  attributes :id, :title, :time, :video_url, :section_id

  belongs_to :section
  # has_many :enrolled
end
