class AddEditCountToArticles < ActiveRecord::Migration
  def change
    add_column :articles, :edit_count, :integer, default: 0

  end
end
