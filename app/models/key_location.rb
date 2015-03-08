class KeyLocation < ActiveRecord::Base
  belongs_to :key
  belongs_to :location

  validates_uniqueness_of :key_id, scope: [:location_id]
end
