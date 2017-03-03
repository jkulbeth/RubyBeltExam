class SongsController < ApplicationController
  def index
        @songs = Song.all.order(count: :desc)
       
  end
    
  def add
     song = Song.find(params[:song_id])
     add = Playlist.create(user: current, song: song) 
     
     @favorites = song.listed
     @favorites = @favorites +1
     song.update(listed: @favorites)
     redirect_to "/songs"
  end

  def create
            
        @song = Song.new(song_params)
            
        if @song.save
          redirect_to "/songs"
		else
            flash[:errors] = @song.errors.full_messages   
			redirect_to "/songs"
		end
  end
    
  def show
        @song = Song.find(params[:id])
        @users = Song.find(params[:id]).user_songs 
        
        
     
  end

  private
  def song_params
       params.require(:song).permit(:title, :artist).merge(count: 0)
  end
end
