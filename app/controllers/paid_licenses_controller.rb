class PaidLicensesController < ApplicationController
  def create
    ActiveRecord::Base.transaction(:isolation => :serializable) do
      PaidLicense.create(:number => ['a1', 'a2', 'a3', 'a4'].sample)
    end
    render :text => 'hello'
  end
end
