class HomeController < ApplicationController
  # skip_before_action :authenticate_user!
  def index
    if user_signed_in?
      if current_user.profile
        @profile = current_user.profile
      else
        @profile = Profile.new
      end
    end
  end
end
