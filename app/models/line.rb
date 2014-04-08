class Line < ActiveRecord::Base
  has_many :buses
  has_many :stops, through: :buses
  has_many :stations, through: :stops
  # has_many :time, through: :stops

  validates :name, :presence => true
  validates :name, :uniqueness => true
end
