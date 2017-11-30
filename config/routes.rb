Rails.application.routes.draw do


  # get 'sessions/new'

  # get 'sessions/create'

  # get 'sessions/destroy'

  # get '/users/new'

  # get '/users/create'

	# /pictures will go to the pictures controller index method
	# Math any http GET request for the URL /pictures to the index metod in Pictures COntroller
	# GET http Request
	# 'Pictures' specifies URL 
	# =>, # syntax for defining routes
	# 'pictures name of controller, the class called PicturesController
	# index Name of method in controller that gets executed when someone makes request
	


	# get 'pictures' => 'pictures#index'
	# url without a path
	# root 'pictures#index'

	# get 'pictures/new' => 'pictures#new'
	# get 'pictures/:id/edit' => 'pictures#edit'
	# # any value can take place of :id
	# get 'pictures/:id' => 'pictures#show'
	# patch 'pictures/:id' => "pictures#update"

	# delete 'pictures/:id' => 'pictures#destroy'

	# post 'pictures' => 'pictures#create'
	
	resource :users, only: [:new,:create]
	resource  :sessions, only: [:new,:create,:destroy]
	resources :pictures
	root "pictures#index"

end


