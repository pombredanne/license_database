class PaidLicense < ActiveRecord::Base
  validates :number, :uniqueness => true
end
