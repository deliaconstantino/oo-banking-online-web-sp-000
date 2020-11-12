class Transfer
  attr_accessor :sender, :receiver, :status, :amount

  def initialize(sender, receiver, amount)
    @sender = sender
    @receiver = receiver
    @status = "pending"
    @amount = amount
  end

  def valid?
    sender.valid? == true && receiver.valid? == true
  end

  def execute_transaction
    if sender.balance >= amount
      sender.deposit(-amount) && receiver.deposit(amount)
    end
  end
end
