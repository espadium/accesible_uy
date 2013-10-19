class Facility < ActiveRecord::Base
  belongs_to :address
  has_many :accessibilities
end
