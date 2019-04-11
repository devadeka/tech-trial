Country.destroy_all
Country.create(:name => "Australia", :code => "AU")
Country.create(:name => "United States", :code => "US")

Currency.destroy_all
Currency.create(code: 'AUD')
Currency.create(code: 'USD')
Currency.create(code: 'GBP')