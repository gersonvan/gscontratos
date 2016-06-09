class AddFieldNumProcesso < ActiveRecord::Migration
  def change
    add_column :procurements, :numero_do_processo, :bigint
  end
end
