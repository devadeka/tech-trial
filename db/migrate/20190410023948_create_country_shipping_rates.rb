class CreateCountryShippingRates < ActiveRecord::Migration[5.2]
  def change
    create_table :country_shipping_rates do |t|
      t.references :country
      t.references :currency
      t.string :regular
      t.string :express

      t.timestamps
    end
  end
end
