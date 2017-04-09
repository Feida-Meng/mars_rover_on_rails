class CreateRovers < ActiveRecord::Migration[5.1]
  def change
    create_table :rovers do |t|
      t.string :current_position
      t.string :move

      t.timestamps
    end
  end
end
