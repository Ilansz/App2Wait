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
    params[:users].each do |userid|
      GroupsUser.create!(user_id: userid, group_id: @group.id)
    end
    GroupsUser.create!(user_id: current_user.id, group_id: @group.id)
    authorize @group
    redirect_to challenges_path
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
