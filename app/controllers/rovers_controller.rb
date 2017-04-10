class RoversController < ApplicationController

  def index
    @rovers = Rover.all
    @rovers_qty = @rovers.length

  end

  def show
    @rover = Rover.find(params[:id])
    @rover_position = @rover.current_position
    @rover_coordination = @rover_position[0, 2]
    @rover_direction = @rover_position[2]

  end

  def new
    @rover = Rover.new
  end

  def create
    @rover = Rover.new(rover_params)
    if @rover.Save
      redirect_to rovers_url
    else
      render :new
    end

    private
    def rover_params
      params.require(:rover).permit(:current_position, :move)
    end
  end



end
