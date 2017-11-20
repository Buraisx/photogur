Rails.application.routes.draw do
	# /pictures will go to the pictures controller index method
	# Math any http GET request for the URL /pictures to the index metod in Pictures COntroller
	# GET http Request
	# 'Pictures' specifies URL 
	# =>, # syntax for defining routes
	# 'pictures name of controller, the class called PicturesController
	# index Name of method in controller that gets executed when someone makes request
	get 'pictures' => 'pictures#index'

	root 'pictures#index'
	
	get 'pictures/new' => 'pictures#new'
	# any value can take place of :id
	get 'pictures/:id' => 'pictures#show'

	post 'pictures' => 'pictures#create'

end
