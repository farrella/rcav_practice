class CalculationsController < ApplicationController
  def home
  end

  def sqrt
    @the_number = params[:number].to_f
    @answer = Math.sqrt(@the_number)
  end

  def square
  	@the_number = params[:number].to_f
    @answer = @the_number*@the_number
  end

  def pmt
  end
end

