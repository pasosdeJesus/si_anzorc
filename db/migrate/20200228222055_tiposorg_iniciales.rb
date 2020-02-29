class TiposorgIniciales < ActiveRecord::Migration[6.0]
  def up
    execute <<-SQL
      INSERT INTO tipoorganzorc (id, nombre, fechacreacion, created_at, updated_at) VALUES 
        (1, 'SIN INFORMACIÓN', '2020-02-28', '2020-02-28', '2020-02-28');
      INSERT INTO tipoorganzorc (id, nombre, fechacreacion, created_at, updated_at) VALUES 
        (2, 'SINDICAL', '2020-02-28', '2020-02-28', '2020-02-28');
      INSERT INTO tipoorganzorc (id, nombre, fechacreacion, created_at, updated_at) VALUES 
        (3, 'COOPERATIVA', '2020-02-28', '2020-02-28', '2020-02-28');
      INSERT INTO tipoorganzorc (id, nombre, fechacreacion, created_at, updated_at) VALUES 
        (4, 'PRODUCTIVA', '2020-02-28', '2020-02-28', '2020-02-28');
      INSERT INTO tipoorganzorc (id, nombre, fechacreacion, created_at, updated_at) VALUES 
        (5, 'CORPORACIÓN', '2020-02-28', '2020-02-28', '2020-02-28');
      INSERT INTO tipoorganzorc (id, nombre, fechacreacion, created_at, updated_at) VALUES 
        (6, 'ASOCIACIÓN', '2020-02-28', '2020-02-28', '2020-02-28');
      INSERT INTO tipoorganzorc (id, nombre, fechacreacion, created_at, updated_at) VALUES 
        (7, 'FUNDACIÓN', '2020-02-28', '2020-02-28', '2020-02-28');

      INSERT INTO nivelorganzorc (id, nombre, fechacreacion, created_at, updated_at) VALUES 
        (1, 'SIN INFORMACIÓN', '2020-02-28', '2020-02-28', '2020-02-28');
      INSERT INTO nivelorganzorc (id, nombre, fechacreacion, created_at, updated_at) VALUES 
        (2, 'BASE', '2020-02-28', '2020-02-28', '2020-02-28');
      INSERT INTO nivelorganzorc (id, nombre, fechacreacion, created_at, updated_at) VALUES 
        (3, 'ORGANIZACIÓN DE ORGANIZACIONES', '2020-02-28', '2020-02-28', '2020-02-28');
    SQL
  end

  def down
    execute <<-SQL
      DELETE FROM tipoorganzorc WHERE id>='1' and id<=7;
      DELETE FROM nivelorganzorc WHERE id>='1' and id<=3;
    SQL
  end
end
