class AddNacionalidadeColumToProcurements < ActiveRecord::Migration
  def change
    add_column :procurements, :nacionalidade, :string
  end
end
