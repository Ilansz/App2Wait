class GroupsController < ApplicationController
  before_action :set_group, only: [:show, :edit, :update, :destroy]

  def index
    @groups = policy_scope(Group)
  end

  def show
    @group = Group.find(params[:id])
  end

  def new
    @group = Group.new
    authorize @group
  end

  def create
    @group = Group.create(group_params)
    # iterate through the users to create a group user for every single username
    raise
    authorize @group
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private

  def set_group
    @group = Group.find(params[:id])
    authorize @group
  end

  def group_params
    params.require(:group).permit(:name, :photo, :username)
  end
end
