class AddReferenceToProcurement < ActiveRecord::Migration
  def change
    add_reference :procurements, :city, index: true, foreign_key: true
  end
end
