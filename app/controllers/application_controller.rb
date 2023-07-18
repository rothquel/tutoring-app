class ApplicationController < ActionController::Base
  before_action :authenticate_tutor!

  protected

  def after_sign_in_path_for(tutor)
    tutor_dashboard_path
  end

end
