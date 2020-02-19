class CreaNodos < ActiveRecord::Migration[6.0]
  def up
    execute <<-SQL
      INSERT INTO nodo (id, nombre, 
        fechacreacion, created_at, updated_at) VALUES (
        '1', 'CARIBE', '2020-01-14', '2020-01-14', '2020-01-14');
      INSERT INTO nodo (id, nombre, 
        fechacreacion, created_at, updated_at) VALUES (
        '2', 'CENTRO', '2020-01-14', '2020-01-14', '2020-01-14');
      INSERT INTO nodo (id, nombre, 
        fechacreacion, created_at, updated_at) VALUES (
        '3', 'NOROCCIDENTE', '2020-01-14', '2020-01-14', '2020-01-14');
      INSERT INTO nodo (id, nombre, 
        fechacreacion, created_at, updated_at) VALUES (
        '4', 'NORORIENTE', '2020-01-14', '2020-01-14', '2020-01-14');
      INSERT INTO nodo (id, nombre, 
        fechacreacion, created_at, updated_at) VALUES (
        '5', 'ORIENTE', '2020-01-14', '2020-01-14', '2020-01-14');
      INSERT INTO nodo (id, nombre, 
        fechacreacion, created_at, updated_at) VALUES (
        '6', 'SUR', '2020-01-14', '2020-01-14', '2020-01-14');
      INSERT INTO nodo (id, nombre, 
        fechacreacion, created_at, updated_at) VALUES (
        '7', 'SUROCCIDENTE', '2020-01-14', '2020-01-14', '2020-01-14');
    SQL
  end
  def down
    execute <<-SQL
      DELETE FROM nodo WHERE id>=1 and id<=7;
    SQL
  end
end
