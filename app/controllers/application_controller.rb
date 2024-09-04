class ApplicationController < ActionController::Base
  layout :custom_layout

  def index
    @instructors = Instructor.all
  end

  protected

  def custom_layout
    if devise_controller?
      'admin'
    else
      'application'
    end
  end
end
