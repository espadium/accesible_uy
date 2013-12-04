class Place < ActiveRecord::Base
  belongs_to :address
  has_and_belongs_to_many :accessibilities
  before_save :ensure_url_protocol

  def address_literal
    address && address.literal
  end

  def address_lat
    address && address.lat
  end

  def address_long
    address && address.long
  end

  private

  def ensure_url_protocol
    self.link = 'http://' + link unless link.starts_with? 'http://'
  end
end
