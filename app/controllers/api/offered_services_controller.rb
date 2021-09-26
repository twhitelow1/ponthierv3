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
    response = Cloudinary::Uploader.upload(params[:image],
    {
      cloud_name: Rails.application.credentials.cloudinary.cloud_name,
      api_key: Rails.application.credentials.cloudinary[:api_key],
      api_secret: Rails.application.credentials.cloudinary[:api_secret],
    })
    cloudinary_url = response["secure_url"]

    @offered_service = OfferedService.new(
      name: params[:name], 
      description: params[:description], 
      image: cloudinary_url, 
    )
    @offered_service.save
    render "show.json.jb"
  end

  def update
    response = Cloudinary::Uploader.upload(params[:image],
      {
        cloud_name: Rails.application.credentials.cloudinary[:cloud_name],
        api_key: Rails.application.credentials.cloudinary[:api_key],
        api_secret: Rails.application.credentials.cloudinary[:api_secret],
      })
      cloudinary_url = response["secure_url"]

    @offered_service = OfferedService.find_by(id: params[:id])
      @offered_service.name = params[:name] || @offered_service.name
      @offered_service.description = params[:description] || @offered_service.description
      @offered_service.image = cloudinary_url || @offered_service.image
      
    @offered_service.save
    render "show.json.jb"
  end

  def destroy
    @offered_service = OfferedService.find_by(id: params[:id])
    @offered_service.destroy
    render json: {message: "Service successfully destroyed."}
  end
end
