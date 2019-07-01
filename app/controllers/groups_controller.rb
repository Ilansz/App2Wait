class GroupsController < ApplicationController
  before_action :set_group, only: [:show, :edit, :update, :destroy]

  def index
    @groups = policy_scope(Group)
  end

  def show
    authorize @group
  end

  def new
    authorize @group
  end

  def create
    authorize @group
  end

  def edit
    authorize @group
  end

  def update
    authorize @group
  end

  def destroy
    authorize @group
  end

  private

  def set_group
    @group = Group.find(params[:id])
    authorize @group
  end
end
