class RenamePasswordColumn < ActiveRecord::Migration
  def change
  	rename_column :users, :password_digest, :crypted_password
  end
end
