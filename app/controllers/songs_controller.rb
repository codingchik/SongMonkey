class SongsController <ApplicationController

	def index
	end

	def show
		# song = Song.find(params[:id])
	end

	def new
		@song = Song.new
	end

	def create
		# @song = Song.new(params.require(:song).permit(:name, :date, :text, location))
		# if @song.save
		# 	redirect_to users_path
		# else
		# 	render 'new'
		# end
	end

	def edit
	end

	def update
	end

	def destroy
	end

end