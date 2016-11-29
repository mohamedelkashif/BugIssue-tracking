class ModifyAppsTable < ActiveRecord::Migration[5.0]
  def change

  	change_table :apps do |t|
    	
    	
    	t.belongs_to :state

    
    end
  end
end
