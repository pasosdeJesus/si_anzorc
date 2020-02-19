class CambiaPerfil < ActiveRecord::Migration[6.0]
  def up
    execute <<-SQL
      UPDATE sip_perfilactorsocial SET fechadeshabilitacion='2020-02-12'
        WHERE id<>1;
      INSERT INTO sip_perfilactorsocial(id, nombre, 
        fechacreacion, created_at, updated_at)
        VALUES (6, 'REPRESENTANTE', '2020-02-12', '2020-02-12', '2020-02-12');
      INSERT INTO sip_perfilactorsocial(id, nombre, 
        fechacreacion, created_at, updated_at)
        VALUES (7, 'DELEGADO', '2020-02-12', '2020-02-12', '2020-02-12');
    SQL
  end
  
  def down
    execute <<-SQL
      DELETE FROM sip_perfilactorsocial WHERE id in (6,7);
      UPDATE sip_perfilactorsocial SET fechadeshabilitacion=NULL
        WHERE id<>1;
    SQL
  end
end
