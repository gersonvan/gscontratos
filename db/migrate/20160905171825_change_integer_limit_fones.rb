class ChangeIntegerLimitFones < ActiveRecord::Migration
  def change
    change_column :procurements, :fones, :integer, limit: 8
    change_column :procurements, :fone2, :integer, limit: 8
    change_column :procurements, :fone3, :integer, limit: 8
  end
end
