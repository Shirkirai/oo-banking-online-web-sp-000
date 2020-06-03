class BankAccount
  attr_accessor :name, :balance, :status

  def initialize(name)
    if name = "Avi"
      @name = name
    else
      raise_error
    end
    @balance = 1000
    @status = 'open'
  end
end
