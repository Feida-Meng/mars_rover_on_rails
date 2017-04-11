class RoversController < ApplicationController


  def index
    @rovers = Rover.all
    @rovers_qty = @rovers.length
    @rover1 = Rover.find(1)
    @rover1_position = @rover1.current_position
    @rover1_coordination = @rover1_position[0, 2]
    @rover1_direction = @rover1_position[2]

  end

  def show
    set_rover
    @rover_position = @rover.current_position
    @rover_coordination = @rover_position[0, 2]
    @rover_direction = @rover_position[2]

  end

  def new
    @rover = Rover.new
  end

  def create
    @rover = Rover.new(rover_params)
    if @rover.save
      redirect_to rovers_url
    else
      render :new
    end

  end

  def edit
    set_rover
  end

  def update
    set_rover
    if @rover.update_attributes(rover_params)
      redirect_to rovers_url
    else
      render :edit

    end
  end

  def update_position
    @rover1 = Rover.find(1)
    hash = rover_params
    hash[:current_position] = @rover1.read_instruction(hash[:current_position],hash[:move])
    if @rover1.update_attributes(hash)
      render rovers_url
    else
      render rovers_url

    end
  end

  def destroy
  set_rover
  @rover.destroy
  redirect_to rovers_url
  end

  private
    def set_rover
      @rover = Rover.find(params[:id])
    end

    def rover_params
      params.require(:rover).permit(:current_position, :move)
    end

end
