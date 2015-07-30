Rails.application.routes.draw do

  get("/", { :controller => "photos", :action => "index" })

 # Routes to CREATE photos
  get("/photos/new",               { :controller => "photos", :action => "new_form" })
  get("/photo/create_photo",       { :controller => "photos", :action => "create_photo" })


  # Routes to READ photos
  get("/photos",           { :controller => "photos", :action => "index" })
  get("/photos/:id",       { :controller => "photos", :action => "show" })


  # Routes to UPDATE photos
  get("/photo/edit_photo/:id",         { :controller => "photos", :action => "edit_photo" })
  get("/photos/:id/edit",              { :controller => "photos", :action => "edit_form" })


  # Routes to DELETE photos
  get("/delete_photo/:id",           { :controller => "photos", :action => "destroy" })



end
