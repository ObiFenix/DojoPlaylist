class PlaylistsController < ApplicationController

  def add_to_playlist
    Playlist.create(song_id: params[:id], user_id: current_user.id)
    redirect_to songs_path
  end

  # ==========================
  # DELETE ONE Request [.html]
  # DELETE Request [.json]
  # ======================
  def remove_one_from_playlist
    Playlist.where(user_id:current_user.id, song_id:params[:id]).first.delete
    redirect_to "/users/#{current_user.id}"
  end

  # ==========================
  # DELETE All Request [.html]
  # DELETE Request [.json]
  # ======================
<<<<<<< HEAD
  def remove_from_playlist
    # current_user.playlists.where(song_id: params[:id]).delete
    current_user.playlists.delete(Playlist.find(params[:id])
    redirect_to "/songs"
=======
  def remove_all_from_playlist
    Playlist.where(user_id:current_user.id, song_id:params[:id]).delete_all
    redirect_to "/users/#{current_user.id}"
>>>>>>> aff4c3a7a3536674ba2a4079c36f4f2cffb0378e
  end

  private
    def song_params
      params.require(:song).permit(:title, :artist)
    end
end
