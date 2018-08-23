class Song < ActiveRecord::Base
  has_many   :playlists, dependent: :destroy
  has_many   :users, through: :playlists, source: :user, dependent: :destroy # all the users that added on a specific song
  validates  :title, :artist, presence: true
  validates  :title, uniqueness: { case_sensitive: false, message: ": A song with this title has already been created!" }
end
