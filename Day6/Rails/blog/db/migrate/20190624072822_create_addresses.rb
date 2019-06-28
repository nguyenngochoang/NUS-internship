class CreateAddresses < ActiveRecord::Migration[5.2]
  def change
    create_table :addresses do |t|
      t.string :link
      t.text :note
      t.references :comment, foreign_key: true

      t.timestamps
    end
  end
end
