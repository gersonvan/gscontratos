class AddDemissaoEPagamentoColumns < ActiveRecord::Migration
  def change
    add_column :procurements, :demitido, :string
    add_column :procurements, :motivo, :string
    add_column :procurements, :data_aviso, :date
    add_column :procurements, :ultimo_dia_trabalhado, :date
    add_column :procurements, :assinou_trct, :string
    add_column :procurements, :homologacao_sindicato, :string
    add_column :procurements, :ressalva, :string
    add_column :procurements, :assinou_algum_documento,:string
    add_column :procurements, :motivo_da_demissao,:text
    add_column :procurements, :recebeu_algum_valor, :string
    add_column :procurements, :quem_demitiu, :string
    add_column :procurements, :qte_de_faltas,:integer
    add_column :procurements, :qte_atestados, :integer
    add_column :procurements, :qte_suspensao, :integer
    add_column :procurements, :qte_advertencia, :integer
    add_column :procurements, :res_indireta,:string
    add_column :procurements, :assedio,:string
    add_column :procurements, :vr_recebido_rescisao, :string
    add_column :procurements, :fgts,:string
    add_column :procurements, :parcial_fgts, :string
    add_column :procurements, :quarenta_fgts, :string
    add_column :procurements, :parcial_quarenta_fgts, :string
    add_column :procurements, :data_baixa_na_ctps, :date
    add_column :procurements, :devolucao_ctps, :string
    add_column :procurements, :recebeu_gsd, :string
  end
end
