Rails.application.routes.draw do

  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root to: "videos#index"
  # Routes for the Comment resource:
  # CREATE
  get "/comments/new", :controller => "comments", :action => "new"
  post "/create_comment", :controller => "comments", :action => "create"

  # READ
  get "/comments", :controller => "comments", :action => "index"
  get "/comments/:id", :controller => "comments", :action => "show"

  # UPDATE
  get "/comments/:id/edit", :controller => "comments", :action => "edit"
  post "/update_comment/:id", :controller => "comments", :action => "update"

  # DELETE
  get "/delete_comment/:id", :controller => "comments", :action => "destroy"
  #------------------------------

  # Routes for the Favorite resource:
  # CREATE
  get "/favorites/new", :controller => "favorites", :action => "new"
  post "/create_favorite", :controller => "favorites", :action => "create"

  # READ
  get "/favorites", :controller => "favorites", :action => "index"
  get "/favorites/:id", :controller => "favorites", :action => "show"

  # UPDATE
  get "/favorites/:id/edit", :controller => "favorites", :action => "edit"
  post "/update_favorite/:id", :controller => "favorites", :action => "update"

  # DELETE
  get "/delete_favorite/:id", :controller => "favorites", :action => "destroy"
  #------------------------------

  # Routes for the Content resource:
  # CREATE
  get "/contents/new", :controller => "contents", :action => "new"
  post "/create_content", :controller => "contents", :action => "create"

  # READ
  get "/contents", :controller => "contents", :action => "index"
  get "/contents/:id", :controller => "contents", :action => "show"

  # UPDATE
  get "/contents/:id/edit", :controller => "contents", :action => "edit"
  post "/update_content/:id", :controller => "contents", :action => "update"

  # DELETE
  get "/delete_content/:id", :controller => "contents", :action => "destroy"
  #------------------------------

  # Routes for the Profile resource:
  # CREATE
  get "/profiles/new", :controller => "profiles", :action => "new"
  post "/create_profile", :controller => "profiles", :action => "create"

  # READ
  get "/profiles", :controller => "profiles", :action => "index"
  get "/profiles/:id", :controller => "profiles", :action => "show"

  # UPDATE
  get "/profiles/:id/edit", :controller => "profiles", :action => "edit"
  post "/update_profile/:id", :controller => "profiles", :action => "update"

  # DELETE
  get "/delete_profile/:id", :controller => "profiles", :action => "destroy"
  #------------------------------

  # Routes for the Video resource:
  # CREATE
  get "/videos/new", :controller => "videos", :action => "new"
  post "/create_video", :controller => "videos", :action => "create"

  # READ
  get "/videos", :controller => "videos", :action => "index"
  get "/videos/:id", :controller => "videos", :action => "show"

  # UPDATE
  get "/videos/:id/edit", :controller => "videos", :action => "edit"
  post "/update_video/:id", :controller => "videos", :action => "update"

  # DELETE
  get "/delete_video/:id", :controller => "videos", :action => "destroy"
  #------------------------------


end
