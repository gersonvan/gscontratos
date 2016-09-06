class AddFones2e3Columns < ActiveRecord::Migration
  def change
    add_column :procurements, :fone2, :integer
    add_column :procurements, :fone3, :integer
  end
end
