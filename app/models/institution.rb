class Institution < ActiveRecord::Base
  belongs_to :address
  has_and_belongs_to_many :accessibility_types

  attr_accessible :description, :name
end
