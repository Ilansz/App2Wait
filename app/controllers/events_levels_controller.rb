class EventsLevelsController < ApplicationController
  def new
    @eventsLevel = EventsLevel.new
    authorize @eventsLevel
  end

  def create
    authorize @eventsLevel
  end

  def edit
    authorize @eventsLevel
  end

  def update
    authorize @eventsLevel
  end

  def destroy
    authorize @eventsLevel
  end
end
