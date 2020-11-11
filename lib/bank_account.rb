class BankAccount
  attr_reader :name, :balance, :status

  def initialize(name)
    @name = name
    @balance = 1000
    self.status(open)
  end

  def status(status = open, balance = 1000)
    @status = status
  end

end
