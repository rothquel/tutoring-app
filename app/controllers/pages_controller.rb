class PagesController < ApplicationController
  skip_before_action :authenticate_tutor!, only: [:home, :apply]
  def home
  end

  def apply
  end
end
