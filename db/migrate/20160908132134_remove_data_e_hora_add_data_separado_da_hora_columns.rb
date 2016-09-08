class RemoveDataEHoraAddDataSeparadoDaHoraColumns < ActiveRecord::Migration
  def change
    remove_column :procurements, :data_e_hora, :datetime
    add_column :procurements, :data_acidente, :date
    add_column :procurements, :hora_acidente, :datetime
  end
end
