class WelcomeController < ApplicationController
  def index
    if current_user
      redirect_to new_user_flight_path(current_user)
    end
  end
end
