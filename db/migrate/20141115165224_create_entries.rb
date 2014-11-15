class CreateEntries < ActiveRecord::Migration
  def change
    create_table :entries do |t|
      t.integer :competition_id
      t.string :name
      t.text :description

      t.timestamps
    end
  end
end
