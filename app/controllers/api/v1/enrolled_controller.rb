class Api::V1::EnrolledController < ApplicationController

  skip_before_action :authenticate, only: [:index, :create]

  def index
    render json: Enrolled.all
  end

  def create
    @enrolled = Enrolled.create(enrolled_params)
    @course = @enrolled.course
    # @course_date = @enrolled.course.date
    @student = @enrolled.student
    # @student_email = @enrolled.student.email
    @section = @enrolled.section
    @teacher = @enrolled.section.teacher
    # @teacher_email = @enrolled.section.teacher.name
    MemberMailer.enrolled_student(@student, @teacher, @course, @section).deliver
    MemberMailer.booked_class(@teacher, @student, @course, @section).deliver
    render json: @enrolled
    #create notifications
    # current_section = Section.find_by(id: enrolled_params[:section_id])
    # teacher_of_section = current_section.teacher
    #notifiable is what we want to link to when a user clicks the notification
    # Notification.create(recipient: teacher_of_section, actor: current_member, action: 'enrolled', notifiable: current_section)
  end

  private

  def enrolled_params
    params.permit(:student_id, :section_id)
  end

end
