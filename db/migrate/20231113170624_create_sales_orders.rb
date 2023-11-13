class CreateSalesOrders < ActiveRecord::Migration[6.1]
  def change
    create_table :sales_orders do |t|

      t.timestamps
    end
  end
end
