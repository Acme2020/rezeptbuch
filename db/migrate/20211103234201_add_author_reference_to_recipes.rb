class AddAuthorReferenceToRecipes < ActiveRecord::Migration[6.0]
  def change
    add_reference :recipes, :author, foreign_key: true
  end
end
