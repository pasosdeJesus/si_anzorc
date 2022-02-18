class CreateEstadoobs < ActiveRecord::Migration[6.0]
  include Sip::SqlHelper
  def up
    create_table :estadoobs do |t|
      t.string :nombre, limit: 500, null: false
      t.string :observaciones, limit: 5000
      t.date :fechacreacion, null: false
      t.date :fechadeshabilitacion
      t.timestamp :created_at, null: false
      t.timestamp :updated_at, null: false
    end
    cambiaCotejacion('estadoobs', 'nombre', 500, 'es_co_utf_8')
  end

  def down
    drop_table :estadoobs
  end
end
