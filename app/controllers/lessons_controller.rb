class LessonsController < ApplicationController
before_action :authenticate_user!
before_action :validate_enrollment

def show
  if validate_enrollment != true
    redirect_to course_path(current_lesson.section.course), alert: 'Please Enroll to View'
 end
end


private

helper_method :current_lesson
  def current_lesson
    @current_lesson ||= Lesson.find(params[:id])
  end

  def validate_enrollment
    current_user.enrolled_in?(current_lesson.section.course)
  end



end
