class ApplicationController < ActionController::Base
  layout :custom_layout
  before_action :authenticate_admin!

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
  
  def after_sign_in_path_for(resource)
    if resource.is_a?(Admin)
      dashboard_path
    else
      root_path # ou qualquer outra rota para usuários regulares
    end
  end
end
