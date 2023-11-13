class CreateCustCustDemographies < ActiveRecord::Migration[6.1]
  def change
    create_table :cust_cust_demographies do |t|

      t.timestamps
    end
  end
end
