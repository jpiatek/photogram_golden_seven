class PhotosController < ApplicationController
  def index
    @list_of_photos = Photo.all
  end


 def show

  @photoid = params["id"]

  @photo= Photo.find_by({ :id => @photoid})

  render ('show.html.erb')

  end


  def new_form


  end


  def create_photo

    p = Photo.new
    p.caption = params["the_caption"]
    p.source = params["the_source"]
    p.save

  redirect_to("http://localhost:3000/photos")

  end

  def destroy

    @photoid = params["id"]

    @photo = Photo.find(params["id"])

    @photo.destroy


  end


  def edit_form

    @photoid = params["id"]

    @photo= Photo.find_by({ :id => @photoid})


  end


  def edit_photo

    @photoid = params["id"]
    p = Photo.find_by({ :id => @photoid})
    p.caption = params["the_caption"]
    p.source = params["the_source"]
    p.save

  redirect_to("http://localhost:3000/photos")


  end



end
