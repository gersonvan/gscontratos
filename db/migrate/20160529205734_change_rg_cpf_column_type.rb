class ChangeRgCpfColumnType < ActiveRecord::Migration
  def change
    change_column :procurements, :rg, :bigint
    change_column :procurements, :cpf, :bigint
  end
end
