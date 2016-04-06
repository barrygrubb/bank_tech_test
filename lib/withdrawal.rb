class Withdrawal

  def initialize(bank_account, amount, date)
    @bank_account = bank_account
    @amount = amount
    @date = date
    @finalized = false
  end

  def finalize
    if !@finalized
      @bank_account.balance -= @amount
      @finalized = true
    end
  end

end