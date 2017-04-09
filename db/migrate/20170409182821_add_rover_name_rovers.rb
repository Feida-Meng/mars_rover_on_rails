class AddRoverNameRovers < ActiveRecord::Migration[5.1]
  def change
    add_column :rovers, :rover_name, :string
  end
end
