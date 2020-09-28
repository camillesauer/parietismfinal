class CreateAisArticles < ActiveRecord::Migration[6.0]
  def change
    create_table :ais_articles do |t|

      t.timestamps
    end
  end
end
