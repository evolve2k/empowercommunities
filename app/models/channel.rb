class Channel < ActiveRecord::Base
  # A channel can be used for many locations
  has_many :locations
end
