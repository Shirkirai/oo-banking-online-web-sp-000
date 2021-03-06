require 'pry'

class Transfer

  attr_reader :sender, :receiver, :amount
  attr_accessor :status

  def initialize(sender, receiver, amount)
    @sender = sender
    @receiver = receiver
    @amount = amount
    @status = 'pending'
  end

  def valid?
    sender.valid? && receiver.valid?
  end

  def execute_transaction

    if valid? && sender.balance >= amount && self.status == 'pending'
      sender.balance = sender.balance - amount
      receiver.balance = receiver.balance + amount
      self.status = 'complete'
    else
      self.status = 'rejected'
      return "Transaction rejected. Please check your account balance."

    end
  end

  def reverse_transfer
    if self.status == 'complete'
      sender.balance = sender.balance + amount
      receiver.balance = receiver.balance - amount
      self.status = 'reversed'

    else
      nil
    end
  end

end
