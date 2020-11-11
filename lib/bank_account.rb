class BankAccount
  attr_reader :name

  attr_accessor :balance, :status

  def initialize(name)
    @name = name
    self.balance(1000)
    self.status("open")
  end

  def status(s)
    @status = s
  end

  def balance(b)
    @balance = b
  end

end
