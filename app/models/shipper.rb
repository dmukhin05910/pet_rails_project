class Shipper < ApplicationRecord
  has_many :sales_orders
end
