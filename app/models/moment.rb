class Moment < ActiveRecord::Base

# exlicitly set table name
self.table_name = "moments"

# method validates data input when submitting a moment record
validates :title, presence: true
validates :latitude, presence: true
validates :longitude, presence: true

end
