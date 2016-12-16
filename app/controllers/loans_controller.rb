class LoansController < ApplicationController

  rescue_from ActiveRecord::RecordNotFound do |exception|
    render json: 'not_found', status: :not_found
  end

  def index
    render json: Loan.all
  end

  def show
  	@loan = Loan.find(params[:id])
  	@payments = Payment.where(loan_id: params[:id])
  	response = {:loan => @loan, :payments => @payments}
    render json:  response
  end

end
