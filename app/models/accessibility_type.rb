class AccessibilityType < ActiveRecord::Base
  attr_accessible :description, :name, :organization_link

  has_and_belongs_to_many :institutions
end
