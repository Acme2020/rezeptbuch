class RemoveAuthorIdColumnFromRecipes < ActiveRecord::Migration[6.0]
  def change
    remove_column(:recipes, :author)

  end
end
