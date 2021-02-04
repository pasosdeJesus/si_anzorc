class CreaObservacionProyectofinanciero < ActiveRecord::Migration[6.0]
  def change
    create_table :observacion_proyectofinanciero do |t|
      t.integer :proyectofinanciero_id, null: false
      t.integer :observacion_id, null: false
      t.index :proyectofinanciero_id
      t.index :observacion_id
    end
    add_foreign_key :observacion_proyectofinanciero, 
      :cor1440_gen_proyectofinanciero, column: :proyectofinanciero_id
    add_foreign_key :observacion_proyectofinanciero, :observacion, 
      column: :observacion_id
  end
end
