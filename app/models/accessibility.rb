class Accessibility < ActiveRecord::Base
  extend FriendlyId
  friendly_id :name, use: :slugged

  has_and_belongs_to_many :subscriptions
  has_and_belongs_to_many :institutions
  has_and_belongs_to_many :places
  has_and_belongs_to_many :facilities
  has_and_belongs_to_many :events
end
