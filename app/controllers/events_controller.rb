class EventsController < ApplicationController
  before_action :set_event, only: [:show, :edit, :update, :destroy]

  def show
  end

  def new
    @challenge = Challenge.find(params[:challenge_id])
    @event = Event.new
    authorize @event
  end

  def create
    @event = Event.new(event_params)
    @event.group = Group.find(params[:event][:group_id])
    if params[:challenge]
      @challenge = Challenge.find(params[:challenge])
      @event.name = @challenge.name
      @event.photo = @challenge.photo.url
    else
      redirect_to challenges_path
    end
    authorize @event
    if @event.save!
      @challenge.levels.each do |level|
        one_level = Level.find(level.id)
        @eventsLevels = EventsLevel.new(time: one_level.time, description: oneLevel.description, event_id: @event.id)
        @eventsLevels.save
      end
      redirect_to edit_event_path(@event)
    else
      render :new
    end
  end

  def edit
  end

  def update
    params[:event][:events_levels_attributes].each do |_, event_level|
      @event_level = EventsLevel.find(event_level[:id])
      time = event_level[:time].to_i
      finish_time = Time.now.utc + time.minutes
      @event_level.update(time: time, challenge_end_time: finish_time)
    end
    redirect_to event_path(@event)
  end

  def destroy
    @event.destroy
    redirect_to challenges_path
  end

  private

  def event_params
    params.require(:event).permit(:group)
  end

  def set_event
    @event = Event.find(params[:id])
    authorize @event
  end
end
