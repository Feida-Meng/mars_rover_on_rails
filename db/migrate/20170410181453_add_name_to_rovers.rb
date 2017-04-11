class AddNameToRovers < ActiveRecord::Migration[5.1]
  def change
    add_column :rovers, :name, :string
  end
end
