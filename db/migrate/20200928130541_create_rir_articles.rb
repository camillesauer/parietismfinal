class CreateRirArticles < ActiveRecord::Migration[6.0]
  def change
    create_table :rir_articles do |t|

      t.timestamps
    end
  end
end
