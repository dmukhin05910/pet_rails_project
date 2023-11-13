class CustCustDemographic < ApplicationRecord
  belongs_to :customer
  belongs_to :customer_demographic
end
