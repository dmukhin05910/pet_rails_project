class CreateCustomerDemographies < ActiveRecord::Migration[6.1]
  def change
    create_table :customer_demographies do |t|

      t.timestamps
    end
  end
end
