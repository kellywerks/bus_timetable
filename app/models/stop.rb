class Stop < ActiveRecord::Base
  belongs_to :station
  belongs_to :line

validates_uniqueness_of :station_id, :scope => :line_id
# validates_uniqueness_of :line_id, :scope => :station_id
validates :station_id, :presence => true
validates :line_id, :presence => true
end
