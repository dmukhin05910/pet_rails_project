class SalesOrder < ApplicationRecord
  has_many :order_details
  belongs_to :shipper
  belongs_to :customer
end
