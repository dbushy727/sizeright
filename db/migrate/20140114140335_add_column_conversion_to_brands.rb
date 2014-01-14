class AddColumnConversionToBrands < ActiveRecord::Migration
  def change
    add_column :brands, :conversion, :float
  end
end
