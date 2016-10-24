class CirclesController < ApplicationController
before_action :authorize_user

  def index
    @circles = Circle.all
  end

  def new
    @circle = Circle.new
    @users = User.all
  end

  private

  def authorize_user
    if !user_signed_in? || !current_user.admin?
      raise ActionController::RoutingError.new("Where ya goin?!@")
    end
  end
end
