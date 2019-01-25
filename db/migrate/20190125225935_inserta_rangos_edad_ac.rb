class InsertaRangosEdadAc < ActiveRecord::Migration[5.2]
  def change
    execute <<-SQL
      INSERT INTO public.cor1440_gen_rangoedadac (id, nombre, limiteinferior, limitesuperior, fechacreacion, fechadeshabilitacion, created_at, updated_at, observaciones) VALUES (1, 'De 0 a 11', 0, 10, '2014-02-11', NULL, '2014-03-07 19:19:02.690768', NULL, NULL);
      INSERT INTO public.cor1440_gen_rangoedadac (id, nombre, limiteinferior, limitesuperior, fechacreacion, fechadeshabilitacion, created_at, updated_at, observaciones) VALUES (2, 'De 12 a 17', 0, 10, '2014-02-11', NULL, '2014-03-07 19:19:02.690768', NULL, NULL);
      INSERT INTO public.cor1440_gen_rangoedadac (id, nombre, limiteinferior, limitesuperior, fechacreacion, fechadeshabilitacion, created_at, updated_at, observaciones) VALUES (3, 'De 18 a 25', 16, 25, '2014-02-11', NULL, '2014-03-07 19:19:09.515802', NULL, NULL);
      INSERT INTO public.cor1440_gen_rangoedadac (id, nombre, limiteinferior, limitesuperior, fechacreacion, fechadeshabilitacion, created_at, updated_at, observaciones) VALUES (4, 'De 26 a 45', 26, 45, '2014-02-11', NULL, '2014-03-07 19:19:09.527935', NULL, NULL);
      INSERT INTO public.cor1440_gen_rangoedadac (id, nombre, limiteinferior, limitesuperior, fechacreacion, fechadeshabilitacion, created_at, updated_at, observaciones) VALUES (5, 'De 46 a 60', 46, 60, '2014-02-11', NULL, '2014-03-07 19:19:09.539237', NULL, NULL);
      INSERT INTO public.cor1440_gen_rangoedadac (id, nombre, limiteinferior, limitesuperior, fechacreacion, fechadeshabilitacion, created_at, updated_at, observaciones) VALUES (6, 'De 61 en adelante', 61, NULL, '2014-02-11', NULL, '2014-03-07 19:19:09.549437', NULL, NULL);
    SQL
  end
end
