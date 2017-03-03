class Song < ApplicationRecord
    has_many :playlists
	has_many :user_songs, through: :playlists, source: :user
   
	validates :title, :artist, presence:true, length: { minimum: 2 }
    

end
