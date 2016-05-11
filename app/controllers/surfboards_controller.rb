class SurfboardsController < ApplicationController
  def index
    @surfboards = Surfboard.all
  end

  def show
    @surfboard = Surfboard.find_by(id: params[:id])
  end


  def create
    @surfboard = Surfboard.new(name: params[:name], height: params[:height], width: params[:height], color: params[:color])
    @surfboard.save
    render :show
  end

  def update
   @surfboard = Surfboard.find_by(id: params[:id])
   @surfboard.assign_attributes(name: params[:name], height: params[:height], width: params[:width], color: params[:color])
   @surfboard.save
   render :show
 end

 def destroy
  @surfboard = Surfboard.find_by(id: params[:id])
   @surfboard.destroy
   render :index
 end

end
