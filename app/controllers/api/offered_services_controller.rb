class Api::OfferedServicesController < ApplicationController
  def index
    @offered_services = OfferedService.all 
    render "index.json.jb"
  end
  
  def show
    @offered_service = OfferedService.find_by(id: params[:id])
    render "show.json.jb"
  end

  def create
    response = Cloudinary::Uploader.upload(params[:image])
    cloudinary_url = response["secure_url"]

    @offered_service = OfferedService.new(
      name: params[:name], 
      description: params[:description], 
      img_url: cloudinary_url, 
    )
    @offered_service.save
    render "show.json.jb"
  end

  def update
    @offered_service = OfferedService.find_by(id: params[:id])
      @offered_service.name = params[:name] || @offered_service.name
      @offered_service.description = params[:description] || @offered_service.description
      @offered_service.img_url = params[:imgUrl] || @offered_service.img_url
      
    @offered_service.save
    render "show.json.jb"
  end

  def destroy
    @offered_service = OfferedService.find_by(id: params[:id])
    @offered_service.destroy
    render json: {message: "Service successfully destroyed."}
  end
end
