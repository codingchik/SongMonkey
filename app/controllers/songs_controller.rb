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
		@song = current_user.songs.new(params.require(:song).permit(:name, :date, :text, :location, :user_id))
		 # @song = Song.new(params.require(:song).permit(:name, :date, :text, :location))
		 if @song.save
		 	redirect_to users_path
		 else
		 	redirect_to create_song_path
		 end
	end

	def edit
		@song = Song.find(params[:id])
	end

	def update
		@song = Song.find(params[:id])
		if @song.update_attributes(params.require(:song).permit(:name, :date, :text, :location, :user_id))
			redirect_to songs_path
		else
			render 'edit'
		end
	end

	def destroy
		@song = Song.find(params[:id])
		@song.destroy
		redirect_to songs_path
	end

end