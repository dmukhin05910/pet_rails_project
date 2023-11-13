class Product < ApplicationRecord
  has_many :order_details

  belongs_to :category
  belongs_to :supplier
end
