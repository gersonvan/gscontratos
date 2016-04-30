class AddAcidenteDeTrabalhoColumns < ActiveRecord::Migration
  def change
    add_column :procurements, :data_e_hora, :datetime
    add_column :procurements, :dentro_fora_da_empresa, :string
    add_column :procurements, :socorro_hospital, :string
    add_column :procurements, :emissao_cat, :string
    add_column :procurements, :afastamento_inss, :string
    add_column :procurements, :sequelas, :string
    add_column :procurements, :parte_atingida, :string
    add_column :procurements, :mudanca_funcao, :string
    add_column :procurements, :nova_funcao, :string
    add_column :procurements, :a_partir_de_quando, :date
  end
end
