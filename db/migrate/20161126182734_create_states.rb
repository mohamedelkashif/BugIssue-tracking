class CreateStates < ActiveRecord::Migration[5.0]
  def change
    create_table :states do |t|
    	t.string :device_name
      t.string :device_os
      t.integer :device_memory
      t.integer :device_storage

      t.timestamps
    end
  end
  def self.down
      drop_table :deviceBug
   end
end
