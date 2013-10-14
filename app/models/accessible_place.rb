class AccessiblePlace < ActiveRecord::Base
  belongs_to :address
  belongs_to :accessibility_type
  attr_accessible :extra_info, :name
end
