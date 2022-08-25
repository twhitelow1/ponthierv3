class Api::SectionsController < ApplicationController
  def index
    @sections = Section.all
    render "index.json.jb"
  end

  def create
    @section = Section.new(
      body: params[:body],
      header: params[:header],
      photo: params[:photo],
    )
    @section.save
    render "show.json.jb"
  end

  def show
    @section = Section.find_by(id: params[:id])
    render "show.json.jb"
  end

  def update
    @section = Section.find_by(id: params[:id])
    @section.body = params[:body] || @section.body
    @section.header = params[:header] || @section.header
    @section.photo = params[:photo] || @section.photo
    @section.save
    render "show.json.jb"
  end
end
