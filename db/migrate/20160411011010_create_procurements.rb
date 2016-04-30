class CreateProcurements < ActiveRecord::Migration
  def change
    create_table :procurements do |t|
      t.string :cliente
      t.text :descricao

      t.timestamps null: false
    end
  end
end
