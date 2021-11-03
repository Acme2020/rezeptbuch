class ChangeDescriptionColumnName < ActiveRecord::Migration[6.0]
  def change
    rename_column :recipes, :description, :description
  end
end
