class EpisodeGuestsController < ApplicationController

  def create
    episode = Episode.find_by(number: params[:episode])
    EpisodeGuest.create(guest_id: params[:guest_id], episode_id: episode.id)

    redirect_to guest_path(params[:guest_id])
  end

end
