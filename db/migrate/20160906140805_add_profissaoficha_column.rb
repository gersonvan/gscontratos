class AddProfissaofichaColumn < ActiveRecord::Migration
  def change
        add_column :procurements, :profissao_ficha, :string
  end
end
