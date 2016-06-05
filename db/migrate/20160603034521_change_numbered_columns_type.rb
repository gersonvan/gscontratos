class ChangeNumberedColumnsType < ActiveRecord::Migration
  def change
    change_column :procurements, :fones, :bigint
    change_column :procurements, :rg, :bigint
    change_column :procurements, :cpf, :bigint
    change_column :procurements, :cnpj, :bigint
    change_column :procurements, :ano_que_n_recebeu_13, :bigint
    change_column :procurements, :qte_he_semana, :bigint
    change_column :procurements, :qte_de_faltas,:bigint
    change_column :procurements, :qte_atestados, :bigint
    change_column :procurements, :qte_suspensao, :bigint
    change_column :procurements, :qte_advertencia, :bigint
    change_column :procurements, :qte_suspensao_gestante, :bigint
  end
end
