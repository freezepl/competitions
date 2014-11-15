class EntriesPerson < ActiveRecord::Base
  belongs_to :entry
  belongs_to :person
end
