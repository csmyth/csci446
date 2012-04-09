class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name
      t.string :password_digest
      t.string :first_name
      t.string :last_name
      t.string :email
      t.string :role

      t.timestamps
    end
  end
end
