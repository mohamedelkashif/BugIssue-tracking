class NewApptoken < ActiveRecord::Migration[5.0]
  def up
    change_column :apps, :appToken, :string, primary_key: true
  end
end
