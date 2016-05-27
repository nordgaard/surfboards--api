class Api::V1::SurfboardsController < ApplicationController
  def index
    @surfboards = Surfboard.all
  end

  def show
    @surfboard = Surfboard.find_by(id: params[:id])
  end

  def create
    @surfboard = Surfboard.new(name: params[:name], feet: params[:feet], inches: params[:inches], color: params[:color])
    if @surfboard.save
      render :show
    else
      render json: {errors: @surfboard.errors.full_messages}, status: 422
    end
  end

  def update
   @surfboard = Surfboard.find_by(id: params[:id])
   @surfboard.assign_attributes(name: params[:name], feet: params[:feet], inches: params[:inches], color: params[:color])
   @surfboard.save
   render :show
 end

 def destroy
  @surfboard = Surfboard.find_by(id: params[:id])
  @surfboard.destroy
  render json:{message: "Surfboard Deleted"}
end

end
