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
    # @event.group =
    authorize @event
    if @event.save!
      redirect_to edit_event_path(@event), notice: "#{@event.name} was created."
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
    params.require(:event).permit(:name, :photo)
  end

  def set_event
    authorize @event
    @event = Event.find(params[:id])
  end
end
