class Event < ActiveRecord::Base
  belongs_to :address
  has_many :accessibilities
end
