class Person < ActiveRecord::Base
  has_many :entries_people
  has_many :entries, through: :entries_people
end
