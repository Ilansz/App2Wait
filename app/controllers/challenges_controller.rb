class ChallengesController < ApplicationController
  def index
    @challenges = skip_policy_scope

  end

  def show
    @challenge = Challenge.find(params[:id])
  end
end
