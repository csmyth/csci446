class AddFirstLastName < ActiveRecord::Migration
  def change
  	add_column :admins, :first_name, :string, limit: 30
  	add_column :admins, :last_name, :string, limit: 30
  end
end
