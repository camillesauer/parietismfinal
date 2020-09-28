class AddColumnThemes < ActiveRecord::Migration[6.0]
  def change
    add_column :themes, :name_theme, :string
    add_column :themes, :img_theme, :string
  end
end
