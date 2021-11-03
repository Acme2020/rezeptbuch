class ChangeRatingTableNameToPlural < ActiveRecord::Migration[6.0]
  def change
    rename_table :rating, :ratings
  end
end
