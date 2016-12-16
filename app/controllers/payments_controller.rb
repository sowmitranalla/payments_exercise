class PaymentsController < ApplicationController
  def create
  	
  end

  def show
  	render json: Payment.find(params[:id])
  end
end
