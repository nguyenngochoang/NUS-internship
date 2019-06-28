class RenameArticlesToAhihi < ActiveRecord::Migration[5.2]
  def change
      rename_table :articles, :ahihis
  end
end
