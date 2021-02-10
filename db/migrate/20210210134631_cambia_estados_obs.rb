class CambiaEstadosObs < ActiveRecord::Migration[6.0]
  def up
    execute <<-SQL
      UPDATE estadoobs SET nombre='NO CONFORMIDAD'
        WHERE id=1;
      UPDATE estadoobs SET nombre='APROBADO'
        WHERE id=2;
    SQL
  end
  def down
    execute <<-SQL
      UPDATE estadoobs SET nombre='POR REVISAR'
        WHERE id=1;
      UPDATE estadoobs SET nombre='REVISADO'
        WHERE id=2;
    SQL
  end
end
