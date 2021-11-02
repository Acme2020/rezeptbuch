class CreateRecipes < ActiveRecord::Migration[6.0]
  def change
    create_table :recipes do |t|
      t.string :title
      t.string :author
      t.string :decriptiong
      t.integer :rating
      t.belongs_to :Author, null: false, foreign_key: true

      t.timestamps
    end
  end
end
