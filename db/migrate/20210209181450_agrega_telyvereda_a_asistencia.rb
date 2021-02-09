class AgregaTelyveredaAAsistencia < ActiveRecord::Migration[6.0]
  def change
    add_column :cor1440_gen_asistencia, :telefono, :string, limit: 1000
    add_column :cor1440_gen_asistencia, :vereda, :string, limit: 1000
  end
end
