class UsersController < ApplicationController
  # before_action :authorize_user

  def show
    if user_signed_in?
      @user = current_user
      binding.pry
    else
      redirect_to :new_user_session
    end
  end

  private
  def authorize_user
    if !user_signed_in? || !current_user.admin?
      raise ActionController::RoutingError.new("Where ya goin?!@")
    end
  end
end
