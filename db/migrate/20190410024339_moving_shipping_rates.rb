class MovingShippingRates < ActiveRecord::Migration[5.2]
  def up
    sql = <<~SQL
    insert into country_shipping_rates (country_id, currency_id, regular, express, created_at, updated_at) 
    select id, (select id from currencies where code = 'AUD'), regular_shipping_rate, express_shipping_rate, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
    from countries
    SQL
    ActiveRecord::Base.connection.execute sql
  end
end
