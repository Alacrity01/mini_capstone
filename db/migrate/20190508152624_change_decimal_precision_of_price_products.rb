class ChangeDecimalPrecisionOfPriceProducts < ActiveRecord::Migration[5.2]
  def change
    change_column :products, :price, :decimal, scale: 2, precision: 10
  end
end
