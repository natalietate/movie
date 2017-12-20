class GroupWatchlistsController < ApplicationController
  def create
    params[:group][:movie_ids].each do |movie_id|
      GroupWatchlist.find_or_create_by(group_id: params[:id], movie_id: movie_id)
    end
    @group = Group.find(params[:id])
    redirect_to @group
  end

  def destroy
    GroupWatchlist.destroy(params[:id])
    redirect_back(fallback_location: root_path)
  end

  def update
    @grouplist.update(:votes)
      if @grouplist.save
        redirect_to root_path
      else
        redirect_to root_path
      end
    end


  def upvote
    get_group
    @movie = params[:movie_id]
    @thegroup = params[:group_id]
    @grouplist = GroupWatchlist.find_by(movie_id: @movie, group_id: @thegroup)
    @grouplist.votes +=1
    @grouplist.save
    redirect_to @group
  end

  def get_group
    @group = Group.find(params[:id])
  end

end
