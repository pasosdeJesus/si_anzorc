class Nodos < ActiveRecord::Migration
  def up
    execute <<-SQL
      INSERT INTO sip_oficina (id, nombre, fechacreacion, created_at) 
        VALUES ('30', 'CARIBE', '2016-01-29', '2016-01-29');
      INSERT INTO sip_oficina (id, nombre, fechacreacion, created_at) 
        VALUES ('31', 'NOROCCIDENTAL', '2016-01-29', '2016-01-29');
      INSERT INTO sip_oficina (id, nombre, fechacreacion, created_at) 
        VALUES ('32', 'NORORIENAL', '2016-01-29', '2016-01-29');
      INSERT INTO sip_oficina (id, nombre, fechacreacion, created_at) 
        VALUES ('33', 'ORIENTE', '2016-01-29', '2016-01-29');
      INSERT INTO sip_oficina (id, nombre, fechacreacion, created_at) 
        VALUES ('34', 'SUR', '2016-01-29', '2016-01-29');
      INSERT INTO sip_oficina (id, nombre, fechacreacion, created_at) 
        VALUES ('35', 'SUROCCIDENTE', '2016-01-29', '2016-01-29');
      INSERT INTO sip_oficina (id, nombre, fechacreacion, created_at) 
        VALUES ('36', 'SURORIENTE', '2016-01-29', '2016-01-29');
    SQL
  end
  def down
    execute <<-SQL
      DELETE FROM sip_oficina WHERE id>='30' AND id<='36';
    SQL
  end
end
