class AddCepususarioColumn < ActiveRecord::Migration
  def change
    add_column :procurements, :cep_usuario, :bigint
  end
end
