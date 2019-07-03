class EventsLevelsController < ApplicationController
  def new
    @events_level = EventsLevel.new
    authorize @events_level
  end

  def create
    authorize @events_level
  end

  def edit
    authorize @events_level
  end

  def update
    authorize @events_level
  end

  def destroy
    authorize @events_level
  end
end
