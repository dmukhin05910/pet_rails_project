class Territory < ApplicationRecord
  has_many :employee_territories
  belongs_to :region
end
