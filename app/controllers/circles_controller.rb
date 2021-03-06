class CirclesController < ApplicationController
before_action :authorize_user, except: [:index, :new, :create]

  def index
    @circles = current_user.circles
  end

  def new
    @circle = Circle.new
    @users = User.all
  end

  def create
    @circle = Circle.new(circle_params)
    @circle.user = current_user
    if @circle.save
      flash[:success] = 'Circle successfully created.'
      redirect_to circles_path
    else
      flash[:notice] = @circle.errors.full_messages.join(', ')
      render :new
    end
  end

  private

  def circle_params
    params.require(:circle).permit(:name, :user_id)
  end

  def authorize_user
    if !user_signed_in? || !current_user.admin?
      raise ActionController::RoutingError.new("Where ya goin?!@")
    end
  end
end
