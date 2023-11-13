class CreateShippers < ActiveRecord::Migration[6.1]
  def change
    create_table :shippers do |t|

      t.timestamps
    end
  end
end
