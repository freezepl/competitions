class EntriesPerson < ActiveRecord::Base
  belongs_to :entry
  belongs_to :person
  validates :person_id, uniqueness: { scope: :entry_id }
end
