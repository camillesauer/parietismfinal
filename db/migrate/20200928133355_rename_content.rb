class RenameContent < ActiveRecord::Migration[6.0]
  def change
    rename_column :rir_articles, :content_8_en, :contenu_8_en
    rename_column :rir_articles, :content_9_en, :contenu_9_en
    rename_column :rir_articles, :content_10_en, :contenu_10_en
    rename_column :rir_articles, :content_11_en, :contenu_11_en
    rename_column :rir_articles, :content_12_en, :contenu_12_en
    rename_column :rir_articles, :content_13_en, :contenu_13_en
    rename_column :rir_articles, :content_14_en, :contenu_14_en
    rename_column :rir_articles, :content_15_en, :contenu_15_en

  end
end
