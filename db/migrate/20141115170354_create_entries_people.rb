class CreateEntriesPeople < ActiveRecord::Migration
  def change
    create_table :entries_people do |t|
      t.integer :person_id
      t.integer :entry_id

      t.timestamps
    end
  end
end
