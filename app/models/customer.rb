class Customer < ApplicationRecord
  has_many :sales_orders
  has_many :cust_cust_demographics
end
