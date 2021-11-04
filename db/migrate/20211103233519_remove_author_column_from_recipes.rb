class RemoveAuthorColumnFromRecipes < ActiveRecord::Migration[6.0]
  def change
    remove_column(:recipes, :Author_id)
  end
end
