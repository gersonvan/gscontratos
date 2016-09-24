class ChangeObjetoDeAcaoColumnType < ActiveRecord::Migration
  def change
    change_column :procurements, :objeto_de_acao, :string
  end
end
