class Bus < ActiveRecord::Base
  has_many :stops
  # has_many :times, through: :stops
  has_many :stations, through: :stops
  belongs_to :line
end
