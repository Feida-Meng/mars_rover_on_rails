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

  def create

  end

  def new

  end

end
