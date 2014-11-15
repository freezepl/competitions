class Person < ActiveRecord::Base
  has_many :entries_people
  has_many :entries, through: :entries_people
  validates :first_name, :last_name, :email, presence: true
end
