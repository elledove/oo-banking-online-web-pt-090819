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
    #if transfer is valid...etc
       #add amount to reciver 
       #sub amount from sender
       #change the status to complete
       
    if valid? && receiver.balance > sender.balance 
      sender.balance -= amount
      receiver.balance += amount
      binding.pry
    end
  end
  
  
  
end
