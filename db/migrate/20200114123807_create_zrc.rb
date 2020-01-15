class CreateZrc < ActiveRecord::Migration[6.0]
  def up
    create_table :zrc do |t|
      t.string :nombre, limit: 500, null: false
      t.integer :estadozrc_id
      t.string :carpeta, limit: 5000
      t.string :geojson, limit: 5000
      t.string :observaciones, limit: 5000
      t.date :fechacreacion, null: false
      t.date :fechadeshabilitacion
      t.timestamp :created_at, null: false
      t.timestamp :updated_at, null: false
    end
    add_foreign_key :zrc, :estadozrc, column: :estadozrc_id
    execute <<-SQL
      INSERT INTO zrc (id, nombre, estadozrc_id, carpeta, 
        fechacreacion, created_at, updated_at)
        VALUES (1, 'Guaviare', 1, 'Guaviare', '2020-01-14',
          '2020-01-14', '2020-01-14');
      INSERT INTO zrc (id, nombre, estadozrc_id, carpeta, 
        fechacreacion, created_at, updated_at)
        VALUES (2, 'Pato Balsillas', 1, 'Pato Balsillas', 
          '2020-01-14', '2020-01-14', '2020-01-14');
      INSERT INTO zrc (id, nombre, estadozrc_id, carpeta, 
        fechacreacion, created_at, updated_at)
        VALUES (3, 'Arenal Morales', 1, 'Arenal Morales', 
          '2020-01-14', '2020-01-14', '2020-01-14');
      INSERT INTO zrc (id, nombre, estadozrc_id, carpeta, 
        fechacreacion, created_at, updated_at)
        VALUES (4, 'Perla Amazónica', 1, 'Perla Amazónica', 
          '2020-01-14', '2020-01-14', '2020-01-14');
      INSERT INTO zrc (id, nombre, estadozrc_id, carpeta, 
        fechacreacion, created_at, updated_at)
        VALUES (5, 'Cabrera', 1, 'Cabrera', 
          '2020-01-14', '2020-01-14', '2020-01-14');
      INSERT INTO zrc (id, nombre, estadozrc_id, carpeta, 
        fechacreacion, created_at, updated_at)
        VALUES (6, 'Valle del Río Cimitarra', 1, 'Valle del Río Cimitarra', 
          '2020-01-14', '2020-01-14', '2020-01-14');
    SQL
  end

  def down
    drop_table :zrc
  end
end
