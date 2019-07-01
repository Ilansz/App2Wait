class VideosController < ApplicationController
  def index
    @videos = policy_scope(Video)
  end

  def show
    @video = Video.find(params[:id])
    authorize @video
  end

  def new
    authorize @video
  end

  def create
    authorize @video
  end

  def destroy
    authorize @video
  end
end
