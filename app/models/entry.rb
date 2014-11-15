class Entry < ActiveRecord::Base
  belongs_to :competition
  has_many :entries_people
  has_many :people, through: :entries_people
end
