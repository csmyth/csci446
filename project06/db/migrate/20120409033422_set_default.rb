class SetDefault < ActiveRecord::Migration
  def up
  	change_column :users, :role, :string, :default => "member"
  end

  def down
  	raise ActiveRecord::IrreversibleMigration
  end
end
