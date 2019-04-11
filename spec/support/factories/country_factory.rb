# frozen_string_literal: true

require 'ffaker'

FactoryBot.define do
  factory :country do
    name  { FFaker::Address.country }
    code  { FFaker::Address.country_code(name) }
  end
end
