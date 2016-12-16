class Loan < ActiveRecord::Base
	has_many :payments
	validates :funded_amount, presence: true,
							  :numericality => { greater_than: 0 }
	before_create :set_balance

	protected
	def set_balance
		self.balance = funded_amount
	end
end
