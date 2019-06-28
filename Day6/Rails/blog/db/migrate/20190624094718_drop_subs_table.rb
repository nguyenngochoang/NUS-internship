class DropSubsTable < ActiveRecord::Migration[5.2]
  def change
      drop_table :subs
  end
end
