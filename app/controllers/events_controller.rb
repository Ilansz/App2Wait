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
      redirect_to event_path(@event), notice: "#{@event.name} was created."
    else
      render :new
    end
  end

  def edit
  end

  def update
  end

  def destroy
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
