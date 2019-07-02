class ChallengesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]

  def index
    @challenges = policy_scope(Challenge)
  end

  def show
    @challenge = Challenge.find(params[:id])
    @group = Group.new
    @event = Event.new
    authorize @challenge
  end
end
