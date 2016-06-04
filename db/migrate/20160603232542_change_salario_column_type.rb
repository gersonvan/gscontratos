class ChangeSalarioColumnType < ActiveRecord::Migration
  def change
    change_column :procurements, :salario_final, :float
    change_column :procurements, :cotas_sal_fam, :float
    change_column :procurements, :vr_recebido_rescisao, 'float USING CAST(vr_recebido_rescisao AS float)'
    change_column :procurements, :qte_advertencia_gestante, 'integer USING CAST(qte_advertencia_gestante AS integer)'
  end
end
