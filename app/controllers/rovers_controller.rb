class RoversController < ApplicationController

  def index
    @rovers = Rover.all
    @rovers_qty = @rovers.length

  end

end
