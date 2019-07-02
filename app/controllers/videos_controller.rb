class VideosController < ApplicationController
  before_action :set_video, only: [:show, :edit, :update, :destroy]

  def index
    @videos = policy_scope(Video)
  end

  def show
    @video = Video.find(params[:id])
    authorize @video
  end

  def new
    @video = Video.new
    authorize @video
  end

  def create
    @video = Video.new(video_params)
    @video.user = current_user
    @video.challenge = Challenge.find(params[:video][:challenge])
    authorize @video
    @video.save
    redirect_to video_path(@video)
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
    params.require(:video).permit(:tag, :challenge_id, :video)
  end
end
