class CreateRatingTable < ActiveRecord::Migration[6.0]
  def change
    create_table :rating_tables do |t|
      t.integer :rating
      t.belongs_to :Recipe, null: false, foreign_key: true

      t.timestamps
    end
  end
end
