class CountryShippingRate < ApplicationRecord
  validates :country, presence: true
  validates :currency, presence: true
  validates :regular, presence: true
  validates :express, presence: true

  belongs_to :country
  belongs_to :currency
end
