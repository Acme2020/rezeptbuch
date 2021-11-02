class CreateIngredients < ActiveRecord::Migration[6.0]
  def change
    create_table :ingredients do |t|
      t.string :name
      t.float :amount
      t.string :unit
      t.belongs_to :Recipe, null: false, foreign_key: true

      t.timestamps
    end
  end
end
