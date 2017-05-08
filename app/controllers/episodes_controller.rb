class EpisodesController < ApplicationController

  def index
    @episodes = Episode.all
  end

  def show
    @episode = Episode.find(params[:id])
    guest_ids = EpisodeGuest.where(episode_id: @episode_id)
    @guests = guest_ids.collect{|id| Guest.find(id)}
  end
end
