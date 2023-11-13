class CreateEmployeeTerritories < ActiveRecord::Migration[6.1]
  def change
    create_table :employee_territories do |t|

      t.timestamps
    end
  end
end
