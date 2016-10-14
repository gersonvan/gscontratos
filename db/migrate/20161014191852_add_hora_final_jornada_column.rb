class AddHoraFinalJornadaColumn < ActiveRecord::Migration
  def change
    add_column :procurements, :horario_final_jornada, :datetime
  end
end
