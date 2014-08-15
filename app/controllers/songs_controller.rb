class SongsController <ApplicationController

	def index
		@songs = Song.all
	end		

	def show
		@song = Song.find(params[:id])
		# @songs = current_user.song
	end

	def new
		@song = Song.new
	end

	def create
		@song = current_user.songs.new(params.require(:song).permit(:name, :date, :text, :location))
		 # @song = Song.new(params.require(:song).permit(:name, :date, :text, :location))
		 if @song.save
		 	redirect_to songs_path
		 else
		 	redirect_to create_song_path
		 end
	end

	def edit
	end

	def update
	end

	def destroy
		@song = Song.find(params[:id])
		@song.destroy
		redirect_to songs_path
	end

end