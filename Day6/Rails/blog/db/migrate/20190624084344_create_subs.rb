class CreateSubs < ActiveRecord::Migration[5.2]
  def change
    create_table :subs do |t|
      t.string :language
      t.string :comment_lang
      t.references :comment, foreign_key: true

      t.timestamps
    end
  end
end
