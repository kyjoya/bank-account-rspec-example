class BankAccount
  attr_reader :account_number, :balance, :transactions

  def initialize(account_number, balance)
    @account_number = account_number
    @balance = balance
    @transactions = []
  end

  def add_transaction(amount)
    @transactions << amount
  end

  def balance
    @transactions.each do |amount|
      @balance += amount
    end

    return @balance
  end
end
