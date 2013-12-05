class Institution < ActiveRecord::Base
  belongs_to :address
  has_and_belongs_to_many :accessibilities

  delegate :lat, :long, :literal, to: :address, prefix: true
end
