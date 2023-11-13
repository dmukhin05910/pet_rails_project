class CreateCustCustDemographics < ActiveRecord::Migration[6.1]
  def change
    create_table :cust_cust_demographics do |t|

      t.timestamps
    end
  end
end
