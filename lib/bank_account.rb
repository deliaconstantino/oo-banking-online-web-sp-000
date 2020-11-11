class BankAccount
  attr_reader :name

  attr_accessor :balance, :status

  def initialize(name)
    @name = name
    self.balance(1000)
    self.status("open")
  end

  def status(current_status)
    @status = current_status
  end

  def balance(current_balance)
    @balance = current_balance
  end

end
