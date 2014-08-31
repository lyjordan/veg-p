class FixColumnName < ActiveRecord::Migration
  def change
   rename_column :products, :discout, :discount
  end
end
