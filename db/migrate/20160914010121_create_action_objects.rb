class CreateActionObjects < ActiveRecord::Migration
  def change
    create_table :action_objects do |t|
      t.string :objeto

      t.timestamps null: false
    end
  end
end
