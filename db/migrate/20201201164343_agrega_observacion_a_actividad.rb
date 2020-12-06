class AgregaObservacionAActividad < ActiveRecord::Migration[6.0]
  def change
    create_table :actividad_observacion do |t|
      t.integer :actividad_id, null: false
      t.integer :observacion_id, null: false
      t.index :actividad_id
      t.index :observacion_id
    end
    add_foreign_key :actividad_observacion, :cor1440_gen_actividad, column: :actividad_id
    add_foreign_key :actividad_observacion, :observacion, column: :observacion_id
  end
end

