class CreateArticleGroups < ActiveRecord::Migration[7.0]
  def change
    create_table :article_groups do |t|

      t.timestamps
    end
  end
end
