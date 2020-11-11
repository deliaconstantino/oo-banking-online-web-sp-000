class BankAccount
  attr_reader :name

  attr_accessor :balance, :status

  def initialize(name)
    @name = name
    self.balance(1000)
    self.status(open)
  end

  def status(status)
    @status = status
  end

  def balance(balance)
    @balance = balance
  end

end
