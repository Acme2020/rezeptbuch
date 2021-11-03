class ChangeRatingTableName < ActiveRecord::Migration[6.0]
  def change
  rename_table :rating_tables, :rating
  end
end
