class Rover < ApplicationRecord

  @current_y = 0
  @current_x = 0
  @current_direction = ""
  def read_instruction(position,newmove)

    @current_x = position[0].to_i
    @current_y = position[1].to_i
    @current_direction = position[2].upcase

    moves = newmove

    l = 0
    while l < moves.length

      if moves[l] != "M"
        turn(moves[l])
      else
        move
      end

    l +=1

    end

    return future_position

  end

  def move

        case @current_direction
        when "N"
          @current_y += 1
        when "E"
          @current_x += 1
        when "S"
          @current_y -= 1
        when "W"
          @current_x -= 1
        end

  end

  def turn(n)
    direction_spell = "WNESWN"
    substring_index = direction_spell[1..-2].index(@current_direction)
    position = 1
    position = -1 if n == "L"
    @current_direction = direction_spell[substring_index + 1 + position]
  end

  def future_position
  "#{@current_x}#{@current_y}#{@current_direction}"
  end
#
end
