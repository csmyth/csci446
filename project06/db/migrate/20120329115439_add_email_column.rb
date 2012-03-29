class AddEmailColumn < ActiveRecord::Migration
  def change
  	add_column :admins, :email, :string, limit: 50
  end
end
