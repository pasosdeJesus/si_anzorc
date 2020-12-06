class CreaObservacion < ActiveRecord::Migration[6.0]
  def up
    create_table :observacion do |t|
      t.integer :usuario_id, null: false
      t.date :fecha, null: false
      t.string :observacion, limit: 5000
      t.integer :estado_id
      t.timestamp :created_at, null: false
      t.timestamp :updated_at, null: false
    end
    add_foreign_key :observacion, :usuario, column: :usuario_id
    add_foreign_key :observacion, :estadoobs, column: :estado_id
  end

  def down
    drop_table :observacion
  end
end
