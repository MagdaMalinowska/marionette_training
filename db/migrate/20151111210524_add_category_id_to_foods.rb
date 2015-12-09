class AddCategoryIdToFoods < ActiveRecord::Migration
  def change
    add_column :foods, :category_id, :integer
    add_index :foods, :category_id
  end
end
