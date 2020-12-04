class AgregaUsuarionotificarAObservacion < ActiveRecord::Migration[6.0]
  def change
      create_table :usuarionotificar_observacion, id: false do |t|
      t.integer :usuarionotificar_id
      t.integer :observacion_id
      t.index :usuarionotificar_id
      t.index :observacion_id
    end
    add_foreign_key :usuarionotificar_observacion, 
      :usuario, column: :usuarionotificar_id
    add_foreign_key :usuarionotificar_observacion, 
      :observacion, column: :observacion_id
  end
end
