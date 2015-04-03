class Group < ActiveRecord::Base
  has_many :relationships
  has_many :users, through: :relationships

  def pay(numbers)
    number = number.gsub(/\D/,'')
    account_sid = 'AC2928ed36622242840d365b775dd6945b'
    auth_token = 'c1a5cefaf57e0864b80f55d91f4f0c33'

    # set up a client to talk to the Twilio REST API
    @client = Twilio::REST::Client.new account_sid, auth_token

    message = @client.account.messages.create(:body => "Hey from Twilio",
        :to => "+1#{number}",     # Replace with your phone number
        :from => "+18312695501")   # Replace with your Twilio number
    puts message.sid
  end
end