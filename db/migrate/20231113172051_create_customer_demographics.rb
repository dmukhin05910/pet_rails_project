class CreateCustomerDemographics < ActiveRecord::Migration[6.1]
  def change
    create_table :customer_demographics do |t|

      t.timestamps
    end
  end
end
