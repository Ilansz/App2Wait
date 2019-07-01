class ChallengesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]

  def index
    @challenges = skip_policy_scope

  end

  def show
    @challenge = Challenge.find(params[:id])
  end
end
