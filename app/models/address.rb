class Address < ActiveRecord::Base
  attr_accessible :corner_street_name, :lat, :literal, :lon, :street_name, :street_number
end
