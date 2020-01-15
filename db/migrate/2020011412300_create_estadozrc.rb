class CreateEstadozrc < ActiveRecord::Migration[6.0]
  def up
    create_table :estadozrc do |t|
      t.string :nombre, limit: 500, null: false
      t.string :observaciones, limit: 5000
      t.date :fechacreacion, null: false
      t.date :fechadeshabilitacion
      t.timestamp :created_at, null: false
      t.timestamp :updated_at, null: false
    end
    execute <<-SQL
      INSERT INTO estadozrc (id, nombre, fechacreacion, created_at, updated_at)
        VALUES (1, 'Constituida', '2019-01-14', '2019-01-14', '2019-01-14');
      INSERT INTO estadozrc (id, nombre, fechacreacion, created_at, updated_at)
        VALUES (2, 'En trámite', '2019-01-14', '2019-01-14', '2019-01-14');
      INSERT INTO estadozrc (id, nombre, fechacreacion, created_at, updated_at)
        VALUES (3, 'Proyecto con delimitación', '2019-01-14', '2019-01-14', '2019-01-14');
      INSERT INTO estadozrc (id, nombre, fechacreacion, created_at, updated_at)
        VALUES (4, 'Proyecto sin delimitación', '2019-01-14', '2019-01-14', '2019-01-14');
    SQL
  end
  def down
    remove_table :estadozrc
  end
end
