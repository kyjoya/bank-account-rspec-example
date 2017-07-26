require "spec_helper"

describe BankAccount do

  let(:account) { BankAccount.new(100345, 1000) }

  describe "#account_number" do
    it "returns an account number" do
      expect(account.account_number).to eq(100345)
    end
  end

  describe "#balance" do
    it "returns initial balance" do
      expect(account.balance).to eq(1000)
    end
  end

  describe "#add_transaction" do
    it "adds transactions to array" do
      account.add_transaction(-20.00)
      account.add_transaction(-5.00)
      expect(account.transactions).to include(-20.00)
    end
  end

  describe "#balance" do
    it "shows my current balance" do
      account.add_transaction(-20.00)
      account.add_transaction(-5.00)
      expect(account.balance).to eq(975)
    end
  end
end

# as a bank member
# i want to see my account number
# so i can use my account
#
# as a bank member
# i want to see my initial balance
# so i know how much money i deposited
#
# as a bank member
# i want to take money out of my account
# so i can buy burritos
#
# as a bank member
# i want to see my updated balance
# so i can know if i can buy more burritos
