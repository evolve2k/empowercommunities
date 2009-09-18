class Location < ActiveRecord::Base
  # Each location has a channel
  belongs_to :channel
  belongs_to :state
end
