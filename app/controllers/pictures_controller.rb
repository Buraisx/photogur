class PicturesController < ApplicationController
	def index
		@pictures = Picture.created_before(Time.now - 1.month)
		@pictures2= Picture.pictures_created_in_year(2017)
		# @pictures = Picture.all

	end

	# retrieve right picture from database and store it in instance variable
	# use active records find method
	def show
		@picture = Picture.find(params[:id])
	end

	# set up instance variables that will be used in view
	# make brand new instance of Picture model that will help us set up a form in our view
	def new
		@picture = Picture.new
	end
	# finds picture and stores it
	def edit
		@picture = Picture.find(params[:id])
	end
	# deletes picture
	# finds picture then destroys it through active record
	def destroy
		@picture = Picture.find(params[:id])
	    @picture.destroy
	    redirect_to "/pictures"
	end
	# updates all values of the found picture
	def update
	    @picture = Picture.find(params[:id])

	    @picture.title = params[:picture][:title]
	    @picture.artist = params[:picture][:artist]
	    @picture.url = params[:picture][:url]
	    @picture.created_at = params[:picture][:created_at]

	    if @picture.save
	      redirect_to "/pictures/#{@picture.id}"
	    else
	      render :edit
	    end
  	end

	def create
		@picture = Picture.new

	    @picture.title = params[:picture][:title]
	    @picture.artist = params[:picture][:artist]
	    @picture.url = params[:picture][:url]


	    if @picture.save
	      # if the picture gets saved, generate a get request to "/pictures" (the index)
	      redirect_to "/pictures"
	    else
	      # otherwise render new.html.erb
	      render :new
	    end
    end
end