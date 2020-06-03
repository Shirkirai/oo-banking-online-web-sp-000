require 'pry'

class Transfer

  attr_reader :sender, :receiver, :amount
  attr_accessor :status, :bankaccount

  def initialize(sender, receiver, amount)
    @sender = sender
    @receiver = receiver
    @amount = amount
    @status = 'pending'
  end

  def valid?
    binding.pry
  end

end
