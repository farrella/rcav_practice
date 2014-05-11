class CalculationsController < ApplicationController
  def home
  end

  def sqrt
    @the_number = params[:number].to_f
    @answer = Math.sqrt(@the_number).to_f
  end

  def square
  	@the_number = params[:number].to_f
    @answer = @the_number*@the_number.to_f
  end

  def pmt
   	@rate = params[:interest_rate].to_f / 12 / 100
   	@nper = params[:number_of_payments].to_f
   	@pv = params[:present_value].to_f
	@payment = (@rate*@pv).to_f/(1-(1+@rate)**-@nper).to_f

  end
end

