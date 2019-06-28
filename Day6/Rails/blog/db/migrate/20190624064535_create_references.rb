class CreateReferences < ActiveRecord::Migration[5.2]
  def change
    create_table :references do |t|
      t.string :link
      t.string :note
      t.references :comment, foreign_key: true

      t.timestamps
    end
  end
end
