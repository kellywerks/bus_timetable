class Stop < ActiveRecord::Base
  belongs_to :station
  belongs_to :bus
  # has_many :times
  has_many :lines, through: :buses


validates_uniqueness_of :station_id, :scope => :bus_id
validates :station_id, :presence => true
validates :bus_id, :presence => true
end
