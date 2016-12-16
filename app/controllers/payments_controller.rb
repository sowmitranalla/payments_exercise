class PaymentsController < ApplicationController
   

  rescue_from ActiveRecord::RecordNotFound do |exception|
    render json: 'not_found', status: :not_found
  end

  def create
  	#puts 'in create PaymentsController'
  	pay = Payment.new(payment_params)
  	loan_id = params[:payment][:loan_id]
  	loan = Loan.find_by(id: loan_id)
  	if(params[:payment][:payment_amount]<=loan.balance)
  		pay.save
  	else
  		render json: 'payment cannot be above remaining balance'
  	end
  end

  def show
  	render json: Payment.find(params[:id])
  end

  def index
  	render json: Payment.all
  end

  private
  def payment_params
  	params.require(:payment).permit(:loan_id, :payment_date, :payment_amount)
  end
end
