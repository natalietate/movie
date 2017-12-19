class GroupsController < ApplicationController

  def index
    @groups = Group.all
    @user = current_user
  end

  def show
    get_group
    @user = current_user
    @members = @group.users
    @group_watch = GroupWatchlist.new
    @grouplist = GroupWatchlist.find(params[:id])
  end

  def new
    @group = Group.new
  end

  def create
    @group = Group.new(group_params)
    @join_group = @group.user_groups.build(:user_id => current_user.id)
      if @group.save
        redirect_to group_path(@group)
      else
        render 'new'
      end
  end

  def join
    @group = Group.find(params[:id])
    @join_group = @group.user_groups.build(:user_id => current_user.id)
      if @join_group.save
        redirect_to(@group, notice: 'You have joined this group.')
      else
        redirect_to(@group, notice: 'Join error.')
      end
  end

  private

    def get_group
      @group = Group.find(params[:id])
    end

    def group_params
      params.require(:group).permit(:title, :description, :event_time, :event_date)
    end

end
