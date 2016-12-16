class Payment < ActiveRecord::Base
  belongs_to :loan
  validates :loan_id, presence: true
  validates :payment_date, presence: true
  validates :payment_amount, presence: true, 
  							:numericality => { greater_than: 0}
  											 #less_than_or_equal_to: Loan.find_by(id: :loan_id).balance}
  after_save :calculate_remaining_balance

  protected
  def calculate_remaining_balance
  	loan = Loan.find_by(id: self.loan_id)
  	loan.balance -= self.payment_amount
  	loan.save
  	puts loan.balance
  end

end
