class AddGestanteColumns < ActiveRecord::Migration
  def change
    add_column :procurements, :inicio_gestacao, :date
    add_column :procurements, :atestados_ultrasom, :string
    add_column :procurements, :deu_conhecimento_na_empresa, :string
    add_column :procurements, :p_quem, :string
    add_column :procurements, :licenca_mater, :string
    add_column :procurements, :suspensao, :string
    add_column :procurements, :qte_suspensao_gestante, :integer
    add_column :procurements, :advertencia, :string
    add_column :procurements, :qte_advertencia_gestante, :string
  end
end
