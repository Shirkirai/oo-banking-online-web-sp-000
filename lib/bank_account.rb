class BankAccount
  attr_accessor :name, :balance, :status

  def initialize(name)
    @name = name || "Avi"
    @balance = 1000
    @status = 'open'
  end
end
