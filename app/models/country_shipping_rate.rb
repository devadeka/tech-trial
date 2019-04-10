class CountryShippingRate < ApplicationRecord
  validate :country, presence: true
  validate :currency, presence: true
  validate :regular, presence: true
  validate :express, presence: true
end
