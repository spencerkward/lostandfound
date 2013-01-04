class CreateOrphans < ActiveRecord::Migration
  def change
    create_table :orphans do |t|
      t.string :description
      t.float :lat
      t.float :long

      t.timestamps
    end
  end
end
