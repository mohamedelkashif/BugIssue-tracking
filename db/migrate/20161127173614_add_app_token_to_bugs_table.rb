class AddAppTokenToBugsTable < ActiveRecord::Migration[5.0]
  def change

  	change_table :apps do |t|
    	
    	t.string :appToken

      t.timestamps
  end
end
