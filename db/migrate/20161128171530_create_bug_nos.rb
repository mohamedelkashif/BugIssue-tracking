class CreateBugNos < ActiveRecord::Migration[5.0]
  def change
    create_table :bug_nos do |t|

      t.timestamps
    end
  end
end
