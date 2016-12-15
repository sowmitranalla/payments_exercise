class AddBalanceToLoan < ActiveRecord::Migration
  def change
    add_column :loans, :balance, :decimal
  end
end
