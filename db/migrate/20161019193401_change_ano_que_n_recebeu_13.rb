class ChangeAnoQueNRecebeu13 < ActiveRecord::Migration
  def change
    change_column :procurements, :ano_que_n_recebeu_13, :string
  end
end
