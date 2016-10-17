class UsersController < ApplicationController

  def show
    if user_signed_in?
      @user = User.find(params[:id])
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
