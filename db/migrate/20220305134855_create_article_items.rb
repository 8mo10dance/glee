class CreateArticleItems < ActiveRecord::Migration[7.0]
  def change
    create_table :article_items do |t|
      t.string :text, null: false
      t.references :article, foreign_key: true

      t.timestamps
    end
  end
end
