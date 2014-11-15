class Competition < ActiveRecord::Base
  has_many :entries
  validates :name, :year, presence: true
end
