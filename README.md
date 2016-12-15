# Payments Exercise

Add in the ability to create payments for a given loan using a JSON API call. 
	You should store the payment date and amount. 
	Expose the outstanding balance for a given loan in the JSON vended for `LoansController#show` and `LoansController#index`. 

	The outstanding balance should be calculated as the `funded_amount` minus all of the payment amounts.

	A payment should not be able to be created that exceeds the outstanding balance of a loan. 
	You should return validation errors if a payment can not be created. 
	Expose endpoints for seeing all payments for a given loan as well as seeing an individual payment.

______________________________________________________________________


	`LoansController#show`
		ex: localhost:3000/loans/1
		* Shows all the payments associated with the loan 
		* Shows remaining balance for loan 

	`LoansController#index`
		ex: localhost:3000/loans/
		* Shows all loans and their remaining balance 

	`PaymentsController#index`
		ex: localhost:3000/loans/1/payments/2
		* Shows data associated with this payment (ie, payment date & amount)

	'PaymentsController#create'
		ex: localhost:3000/loans/1/payments 
		*validates for incoming data 
		*persists data if everything is fine

	-make sure there is server side and front end validation for payment amount input 
	-calculate remaining balance every time (perferably serverside) to display on front end. 

	Payment Schema: 
		amount:decimal 
		payment_date: date
		loan:Loan 

	Loan Schema:
		funded_amount:decimal
		payments:Payment
		balance: decimal