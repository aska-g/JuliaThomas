class Wedding < ApplicationRecord
  has_many :users, dependent: :destroy
  has_many :gifts, dependent: :destroy
  has_many :venues, dependent: :destroy
end
