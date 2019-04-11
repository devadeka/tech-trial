# frozen_string_literal: true

require 'ffaker'

FactoryBot.define do
  factory :currency do
    code    { FFaker::Currency.code }
  end
end
