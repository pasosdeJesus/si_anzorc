class TemaAnzorc < ActiveRecord::Migration[6.0]
  def up
    execute <<-SQL
      UPDATE public.sip_tema SET
         nombre='VERDE ANZORC',
         nav_ini='#ffffff',
         nav_fin='#bdd74b',
         nav_fuente='#356a00',
         fondo_lista='#bdd74b',
         btn_primario_fondo_ini='#0088cc',
         btn_primario_fondo_fin='#0044cc',
         btn_primario_fuente='#ffffff',
         btn_peligro_fondo_ini='#ee5f5b',
         btn_peligro_fondo_fin='#bd362f',
         btn_peligro_fuente='#ffffff',
         btn_accion_fondo_ini='#ffffff',
         btn_accion_fondo_fin='#e6e6e6',
         btn_accion_fuente='#000000',
         alerta_exito_fondo='#dff0d8',
         alerta_exito_fuente='#468847',
         alerta_problema_fondo='#f8d7da',
         alerta_problema_fuente='#721c24',
         fondo='#ffffff',
         color_fuente='#000000',
         color_flota_subitem_fuente='#ffffff',
         color_flota_subitem_fondo='#bdd74b'
      WHERE id = 1;
    SQL
  end

  def down
  end
end
