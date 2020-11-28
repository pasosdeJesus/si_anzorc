class AdaptaIndicadoresPerla < ActiveRecord::Migration[6.0]
  def up
    execute <<-SQL
      UPDATE cor1440_gen_indicadorpf SET tipoindicador_id=1
        WHERE proyectofinanciero_id=12;
      INSERT INTO cor1440_gen_actividadpf_mindicadorpf
        (actividadpf_id, mindicadorpf_id) VALUES
        (53, 2); -- PNUD19OB1R1A1 PNUD19OB1R1I1
      INSERT INTO cor1440_gen_actividadpf_mindicadorpf
        (actividadpf_id, mindicadorpf_id) VALUES
        (53, 3); -- PNUD19OB1R1A1 PNUD19OB1R1I2
      INSERT INTO cor1440_gen_actividadpf_mindicadorpf
        (actividadpf_id, mindicadorpf_id) VALUES
        (54, 4); -- PNUD19OB1R1A2 PNUD19OB1R1I3
      INSERT INTO cor1440_gen_actividadpf_mindicadorpf
        (actividadpf_id, mindicadorpf_id) VALUES
        (55, 5); -- PNUD19OB1R1A3 PNUD19OB1R1I4
      INSERT INTO cor1440_gen_actividadpf_mindicadorpf
        (actividadpf_id, mindicadorpf_id) VALUES
        (56, 6); -- PNUD19OB1R1A4 PNUD19OB1R1I5
      INSERT INTO cor1440_gen_actividadpf_mindicadorpf
        (actividadpf_id, mindicadorpf_id) VALUES
        (57, 7); -- PNUD19OB1R1A5 PNUD19OB1R1I6
      INSERT INTO cor1440_gen_actividadpf_mindicadorpf
        (actividadpf_id, mindicadorpf_id) VALUES
        (58, 8); -- PNUD19OB1R2A1 PNUD19OB1R2I1
      INSERT INTO cor1440_gen_actividadpf_mindicadorpf
        (actividadpf_id, mindicadorpf_id) VALUES
        (59, 9); -- PNUD19OB1R2A2 PNUD19OB1R2I2
      INSERT INTO cor1440_gen_actividadpf_mindicadorpf
        (actividadpf_id, mindicadorpf_id) VALUES
        (60, 10); -- PNUD19OB1R2A3 PNUD19OB1R2I3
      INSERT INTO cor1440_gen_actividadpf_mindicadorpf
        (actividadpf_id, mindicadorpf_id) VALUES
        (61, 11); -- PNUD19OB1R3A1 PNUD19OB1R3I1
      INSERT INTO cor1440_gen_actividadpf_mindicadorpf
        (actividadpf_id, mindicadorpf_id) VALUES
        (62, 12); -- PNUD19OB1R3A2 PNUD19OB1R3I2
      INSERT INTO cor1440_gen_actividadpf_mindicadorpf
        (actividadpf_id, mindicadorpf_id) VALUES
        (63, 13); -- PNUD19OB1R3A3 PNUD19OB1R3I3

    SQL
  end

  def down
    execute <<-SQL
      UPDATE cor1440_gen_indicadorpf SET tipoindicador_id=NULL
        WHERE proyectofinanciero_id=12;
      DELETE FROM cor1440_gen_actividadpf_mindicadorpf
        WHERE actividadpf_id>=53 AND actividadpf_id<=63;
    SQL
  end
end
