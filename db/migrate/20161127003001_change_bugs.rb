class ChangeBugs < ActiveRecord::Migration[5.0]
  def change

  	change_table :bugs do |t|
    	
    	
    	t.belongs_to :app

  end
end
end
