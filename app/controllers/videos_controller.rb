class VideosController < ApplicationController
  before_action :set_video, only: [:edit, :update, :destroy]
  skip_before_action :authenticate_user!, only: [:index]

  def index
    @videos = policy_scope(Video)
    @user = current_user
    if @user.events.last
      @event = Event.find(@user.events.last.id)
    end
  end

  # def show
  #   @video = Video.find(params[:id])
  #   authorize @video
  # end

  def new
    @video = Video.new
    authorize @video
  end

  def create
    @video = Video.new(video_params)
    @video.user = current_user
    @challenge = Challenge.find(params[:challenge_id])
    @video.challenge = @challenge
    authorize @video
    @video.save
    redirect_to videos_path
  end

  def destroy
    authorize @video
  end

  private

  def set_video
    @video = Video.find(params[:id])
    authorize @video
  end

  def video_params
    params.require(:video).permit(:tag, :video)
  end
end
