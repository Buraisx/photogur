class PicturesController < ApplicationController
	def index
		@pictures = Picture.all
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