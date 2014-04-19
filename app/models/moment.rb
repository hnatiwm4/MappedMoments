class Moment < ActiveRecord::Base

# exlicitly set table name
self.table_name = "moments"

# method validates data input when submitting a moment record
validates :title, presence: true
validates :lat, presence: true
validates :long, presence: true

end
