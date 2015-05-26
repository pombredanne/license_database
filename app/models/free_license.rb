class FreeLicense < ActiveRecord::Base
  validates :number, :uniqueness => true
end
