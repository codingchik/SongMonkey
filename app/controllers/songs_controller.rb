class SongsController <ApplicationController

	def index
		@songs = Song.all
	end

	def show
		# song = Song.find(params[:id])
	end

	def new
		@song = Song.new
	end

	def create
		 @song = Song.new(params.require(:song).permit(:name, :date, :text, location))
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
	end

end