class AddColumnsToProcurements < ActiveRecord::Migration
  def change
    add_column :procurements, :fones, :integer
    add_column :procurements, :rg, :integer
    add_column :procurements, :cpf, :integer
    add_column :procurements, :estado_civil, :string 
    add_column :procurements, :endereco, :string
    add_column :procurements, :bairro, :string 
    add_column :procurements, :cidade, :string
    add_column :procurements, :parte_contraria, :string
    add_column :procurements, :cnpj, :integer
    add_column :procurements, :nome_fantasia, :string 
    add_column :procurements, :endereco_empresa, :string 
    add_column :procurements, :bairro_empresa, :string
    add_column :procurements, :cidade_empresa, :string
    add_column :procurements, :proprietario_empresa, :string
    add_column :procurements, :cep_empresa, :integer
    add_column :procurements, :ramo_de_atividade, :string
    add_column :procurements, :objeto_de_acao, :text
  end
end
