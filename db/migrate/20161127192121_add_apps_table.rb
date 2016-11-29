class AddAppsTable < ActiveRecord::Migration[5.0]
  def change
  	create_table :apps do |t|
    	
    	t.string :appToken

      t.timestamps
  end
end
end
