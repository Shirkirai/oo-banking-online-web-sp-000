require 'pry'

class BankAccount
  attr_reader :name
  attr_accessor  :balance, :status

  def initialize(name)
    @name = name
    @balance = 1000
    @status = 'open'
  end

  def deposit(amount)
    @balance = @balance + amount
  end

  def display_balance

    return "Your balance is $#{@balance}."
  end

  def self.valid?
    if self.balance > 0 && self.status == 'open'
      return true
    else
      false
    end
  end
end
