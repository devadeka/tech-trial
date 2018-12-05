# frozen_string_literal: true

require 'ffaker'

FactoryBot.define do
  factory :country do
    name                  { FFaker::Address.country }
    code                  { FFaker::Address.country_code(name) }
    regular_shipping_rate { rand(10..109).to_s }
    express_shipping_rate { rand(10..109).to_s }
  end
end
