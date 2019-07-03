class EventsLevelsController < ApplicationController
  def new
    @eventsLevel = EventsLevel.new
    authorize @eventsLevel
  end
end
