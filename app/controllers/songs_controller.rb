class SongsController < ApplicationController
  before_action :authorize_user, except: [:new, :create]

  def index
    @songs = Song.all
  end

  def new
    @song = Song.new
  end

  def create
    @song = Song.new(song_params)
    @song.user = current_user
    if @song.save
      flash[:success] = 'Song has been saved.'
      redirect_to user_path(@song.user)
    else
      flash[:notice] = @song.errors.full_messages.join(', ')
      render :new
    end
  end

  private

  def song_params
    params.require(:song).permit(:title, :audio, :rating, :play_count)
  end

  def authorize_user
    if !user_signed_in? || !current_user.admin?
      raise ActionController::RoutingError.new("Where ya goin?!@")
    end
  end
end
