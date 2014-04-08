class Station < ActiveRecord::Base
  has_many :stops
  # has_many :times, through: :stops
  has_many :buses, through: :stops
  has_many :lines, through: :buses

  validates :name, :presence => true
  validates :name, :uniqueness => true
end
