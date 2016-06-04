class ChangeIntegerLimitInYourTable2 < ActiveRecord::Migration
  def change
    change_column :procurements, :rg, :integer, limit: 8
  end
end
