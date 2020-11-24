class AgregaObservacionesAPmindicadorpf < ActiveRecord::Migration[6.0]
  def change
    add_column :cor1440_gen_pmindicadorpf, :observaciones, :string
  end
end
