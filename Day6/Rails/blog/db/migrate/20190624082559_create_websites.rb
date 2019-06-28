class CreateWebsites < ActiveRecord::Migration[5.2]
  def change
    create_table :websites do |t|
      t.string :link
      t.string :note
      t.references :article, foreign_key: true

      t.timestamps
    end
  end
end
