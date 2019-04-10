Country.destroy_all
Country.create(:name => "Australia", :code => "AU", :regular_shipping_rate => "20.00", :express_shipping_rate => "50.00")
Country.create(:name => "United States", :code => "US", :regular_shipping_rate => "40.00", :express_shipping_rate => "60.00")

Currency.destroy_all
Currency.create(code: 'AUD')
Currency.create(code: 'USD')
Currency.create(code: 'GBP')
