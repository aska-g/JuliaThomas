class Gift < ApplicationRecord
  belongs_to :wedding
  validates :name, presence: true
end
