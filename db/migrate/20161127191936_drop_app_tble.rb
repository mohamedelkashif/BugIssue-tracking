class DropAppTble < ActiveRecord::Migration[5.0]
  def change
  	drop_table :apps
  end
end
