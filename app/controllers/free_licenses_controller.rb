class FreeLicensesController < ApplicationController
  def create
    FreeLicense.create(:number => ['a1', 'a2', 'a3', 'a4'].sample)
    render :text => 'hello'
  end
end
