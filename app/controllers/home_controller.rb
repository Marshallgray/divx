class HomeController < ApplicationController
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
