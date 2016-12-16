class PaymentsController < ApplicationController
  def create

  end

  def show
  	render json: Payment.find(params[:id])
  end

  def index
  	render json: Payment.all
  end
end
