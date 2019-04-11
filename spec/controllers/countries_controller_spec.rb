# frozen_string_literal: true

require 'rails_helper'

RSpec.describe CountriesController do
  describe 'shipping_rates' do
    subject(:shipping_rates) { get :shipping_rates, params: { country_code: code }, format: :json }

    let(:code)     { 'AU' }
    let!(:country) { FactoryBot.create :country, code: code }
    let!(:currency_aud) { FactoryBot.create :currency, code: 'AUD' }
    let!(:currency_usd) { FactoryBot.create :currency, code: 'USD' }
    let!(:aud_shipping) {FactoryBot.create :country_shipping_rate, country: country, currency: currency_aud}
    let!(:usd_shipping) {FactoryBot.create :country_shipping_rate, country: country, currency: currency_usd}

    it { is_expected.to be_successful }

    describe 'response body' do
      subject(:response_body) do
        shipping_rates
        JSON.parse(response.body)
      end

      specify 'works', :aggregate_failures do
        expected_response = [
          {
            'currency_code' => currency_aud.code,
            'regular_shipping_rate' => aud_shipping.regular,
            'express_shipping_rate' => aud_shipping.express,
          },
          {
            'currency_code' => currency_usd.code,
            'regular_shipping_rate' => usd_shipping.regular,
            'express_shipping_rate' => usd_shipping.express,
          },
        ]

        expect(response_body).to eq expected_response
      end
    end
  end
end
