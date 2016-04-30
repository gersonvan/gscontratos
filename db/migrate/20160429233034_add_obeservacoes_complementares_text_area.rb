class AddObeservacoesComplementaresTextArea < ActiveRecord::Migration
  def change
    add_column :procurements, :observacoes_complementares, :text
  end
end
