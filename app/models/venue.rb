class Venue < ApplicationRecord
  belongs_to :wedding

  def full_address
    [street_address, postal_code, city].compact.join(', ')
  end

  def address_changed?
    street_address_changed? || postal_code_changed? || city_changed?
  end

  geocoded_by :full_address
  after_validation :geocode, if: :address_changed?

end
