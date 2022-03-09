class CreateArticles < ActiveRecord::Migration[7.0]
  def change
    create_table :articles do |t|
      t.string :title, null: false
      t.date :published_at
      t.references :article_group, foreign_key: true

      t.timestamps
    end
  end
end
