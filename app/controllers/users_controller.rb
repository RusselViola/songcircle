class UsersController < ApplicationController
  before_action :authorize_user, except: [:show]

  def show
    if user_signed_in?
      @user = current_user
      @songs = current_user.songs
    else
      redirect_to :new_user_session
    end
  end

  private

  def user_params
    params.require(:user).permit(:first_name, :last_name, :email, :password, :profile_image_id)
  end
  def authorize_user
    if !user_signed_in? || !current_user.admin?
      raise ActionController::RoutingError.new("Where ya goin?!@")
    end
  end
end
