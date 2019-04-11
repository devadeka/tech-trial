# frozen_string_literal: true

class CountriesController < ApplicationController
  def shipping_rates
    @country = Country.find_by(code: shipping_rates_params[:country_code])
    country_shipping_rates = @country.country_shipping_rates.includes(:currency)
    return_value = country_shipping_rates.map do |shipping_rate|
      {
        currency_code: shipping_rate.currency.code,
        regular_shipping_rate: shipping_rate.regular,
        express_shipping_rate: shipping_rate.express,
      }
    end



    respond_to do |format|
      format.json do
        render json: return_value
      end
    end
  end

  private

  def shipping_rates_params
    params.permit(:country_code)
  end
end
