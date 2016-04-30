class AddJornadaDeTrabalhoColumns < ActiveRecord::Migration
  def change
    add_column :procurements, :jornada, :string
    add_column :procurements, :horario, :datetime
    add_column :procurements, :intervalo, :string
    add_column :procurements, :sabado, :string
    add_column :procurements, :domingo_feriado_dia_santo, :string
    add_column :procurements, :trabalhou_noutros_horarios, :string
    add_column :procurements, :h_extra_no_c_cheque, :string
    add_column :procurements, :qte_he_semana, :integer
    add_column :procurements, :folga_qdo, :string
    add_column :procurements, :banco_de_horas, :string
    add_column :procurements, :recebia_vr_hex_correto, :string
    add_column :procurements, :tipo_registro_de_hora, :string
    add_column :procurements, :ass_cartao, :string
    add_column :procurements, :saida_na_hora, :string
    add_column :procurements, :escala_turno, :string
    add_column :procurements, :h_intervalar_tempo, :string
  end
end
