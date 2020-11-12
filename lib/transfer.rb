require 'pry'

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
    if self.valid?
      if sender.balance >= amount && @status == "pending"
        sender.deposit(-amount) && receiver.deposit(amount)
        @status = "complete"
      end
    else
      # binding.pry
      @status = "rejected"
      "Transaction rejected. Please check your account balance."
    end
  end

end
