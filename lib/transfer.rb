require 'pry'
class Transfer
  attr_accessor :sender, :receiver, :transfer, :status, :amount
  
  def initialize( sender, receiver, transfer)
    @transfer = transfer
    @receiver = receiver
    #@balance = balance
    @sender = sender
    @status = "pending"
    @amount = 50
  end
  
  def valid?
    sender.status == "open" && receiver.status == "open"
    sender.valid?
    receiver.valid?
  end
  
  def execute_transaction
    #binding.pry
    @balance +=@amount
    
  end
  
  
  
end
