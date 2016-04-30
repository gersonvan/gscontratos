class AddContratodeTrabalhoColumns < ActiveRecord::Migration
  def change
    add_column :procurements, :data_inicio_tr, :date
    add_column :procurements, :reg_ctps, :string
    add_column :procurements, :data_registro, :date
    add_column :procurements, :periodo_avulso, :string
    add_column :procurements, :funcao, :string
    add_column :procurements, :salario_final, :decimal
    add_column :procurements, :forma_pagto, :string
    add_column :procurements, :comissoes, :string
    add_column :procurements, :cotas_sal_fam, :decimal
    add_column :procurements, :recebia_ccheq, :string
    add_column :procurements, :pg_hextras, :string
    add_column :procurements, :insalubridade, :string
    add_column :procurements, :periculosidade, :string
    add_column :procurements, :ad_noturno, :string
    add_column :procurements, :pg_por_fora, :string
    add_column :procurements, :gorjeta, :string
    add_column :procurements, :viagens_ajuda_custo, :string
    add_column :procurements, :recebeu_ferias, :string
    add_column :procurements, :periodos_n_gozados, :string
    add_column :procurements, :recebia_13, :string
    add_column :procurements, :ano_que_n_recebeu_13, :integer
    add_column :procurements, :recebia_pl, :string
    add_column :procurements, :gratificacoes, :string
    add_column :procurements, :outros, :string
    add_column :procurements, :local_de_trabalho, :string
  end
end
