class Key < ActiveRecord::Base
  has_one :key_location

  validates_presence_of :name
end
