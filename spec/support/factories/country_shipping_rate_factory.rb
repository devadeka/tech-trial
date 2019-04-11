# frozen_string_literal: true

require 'ffaker'

FactoryBot.define do
  factory :country_shipping_rate do
    association(:country)
    association(:currency)
    regular { rand(10..109).to_s }
    express { rand(10..109).to_s }
  end
end
