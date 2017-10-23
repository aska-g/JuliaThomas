class User < ApplicationRecord
  belongs_to :wedding

  ROLES = ["Bride", "Groom", "Guest"]
  validates :first_name, :last_name, presence: true
  validates :role, :inclusion=> { :in => ROLES }
end
