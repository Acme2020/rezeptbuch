class RenameRecipeIdColumn < ActiveRecord::Migration[6.0]
  def change
    remove_index :ratings, name: "index_ratings_on_Recipe_id"
    rename_column :ratings, :Recipe_id, :recipe_id
  end
end
