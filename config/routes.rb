Rails.application.routes.draw do
  # Routes for the Checklist resource:
  # CREATE
  get "/checklists/new", :controller => "checklists", :action => "new"
  post "/create_checklist", :controller => "checklists", :action => "create"

  # READ
  get "/checklists", :controller => "checklists", :action => "index"
  get "/checklists/:id", :controller => "checklists", :action => "show"

  # UPDATE
  get "/checklists/:id/edit", :controller => "checklists", :action => "edit"
  post "/update_checklist/:id", :controller => "checklists", :action => "update"

  # DELETE
  get "/delete_checklist/:id", :controller => "checklists", :action => "destroy"
  #------------------------------

  # Routes for the Trip resource:
  # CREATE
  get "/trips/new", :controller => "trips", :action => "new"
  post "/create_trip", :controller => "trips", :action => "create"

  # READ
  get "/trips", :controller => "trips", :action => "index"
  get "/trips/:id", :controller => "trips", :action => "show"

  # UPDATE
  get "/trips/:id/edit", :controller => "trips", :action => "edit"
  post "/update_trip/:id", :controller => "trips", :action => "update"

  # DELETE
  get "/delete_trip/:id", :controller => "trips", :action => "destroy"
  #------------------------------

  # Routes for the User resource:
  # CREATE
  get "/users/new", :controller => "users", :action => "new"
  post "/create_user", :controller => "users", :action => "create"

  # READ
  get "/users", :controller => "users", :action => "index"
  get "/users/:id", :controller => "users", :action => "show"

  # UPDATE
  get "/users/:id/edit", :controller => "users", :action => "edit"
  post "/update_user/:id", :controller => "users", :action => "update"

  # DELETE
  get "/delete_user/:id", :controller => "users", :action => "destroy"
  #------------------------------

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
