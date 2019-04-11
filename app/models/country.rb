# frozen_string_literal: true

class Country < ApplicationRecord
  validates :name, :code, presence: true

  has_many :country_shipping_rates
end
