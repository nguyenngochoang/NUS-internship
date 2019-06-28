class DropReferencesTable < ActiveRecord::Migration[5.2]
  def change
      def up
    drop_table :references
  end

  def down
    raise ActiveRecord::IrreversibleMigration
  end
  end
end
