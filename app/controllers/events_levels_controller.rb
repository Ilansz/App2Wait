class EventsLevelsController < ApplicationController
  def new
    @eventLevel = EventLevel.new
    authorize @eventLevel
  end

  def create
    authorize @eventLevel
  end

  def edit
    authorize @eventLevel
  end

  def update
    authorize @eventLevel
  end

  def destroy
    authorize @eventLevel
  end
end
