class RealEstate < ApplicationRecord
  has_many :stations , dependent: :destroy
  accepts_nested_attributes_for :stations , allow_destroy: true
  validates :room_name, presence: true
  validates :room_rent, presence: true
  validates :room_address, presence: true
  validates :room_age, presence: true
  validates :room_name, uniqueness: { scope: :room_address }
end
