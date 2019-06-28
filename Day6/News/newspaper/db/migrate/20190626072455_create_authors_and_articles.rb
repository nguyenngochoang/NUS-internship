class CreateAuthorsAndArticles < ActiveRecord::Migration[5.2]
  def change
    create_table :authors_and_articles do |t|
      t.references :article, foreign_key: true
      t.references :author, foreign_key: true
    end
  end
end
