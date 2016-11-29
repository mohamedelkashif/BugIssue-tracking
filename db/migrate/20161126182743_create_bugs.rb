class CreateBugs < ActiveRecord::Migration[5.0]
  def change
    create_table :bugs do |t|
    	t.belongs_to :state, index: true
      t.string :status
      t.string :priority
      t.text :comment
      t.integer :bugnumber
      t.string :app_name
      t.string :app_token

      t.timestamps
    end
  end
  def self.down
      drop_table :bugs
   end
end
