class PersonaSexoSOmision < ActiveRecord::Migration[6.0]
  def up
    execute <<-SQL
      alter table sip_persona alter COLUMN sexo set default 'S';
    SQL
  end
  def down
  end
end
