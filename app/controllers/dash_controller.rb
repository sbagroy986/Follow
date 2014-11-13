class DashController < ApplicationController
  def view
   @client = Twitter::REST::Client.new do |config|
     config.consumer_key        = "i9uQC4pd5zvhO1XuuVweuAUXl"
     config.consumer_secret     = "tYpV4Eg4EXcFJmTVraFEqEQm0hNkAgzXA70HJvSMZjfvtElanV"
     config.access_token        = "2895338556-OQjfqvq7stJpgQmAY06Sy5iT1cSZXiT3QP9LbUo"
     config.access_token_secret = "n8HRDu7qsUZthqApCZdEp3pQlAaVbPizByIXB1zYhvzHD" 
   end
   @names = Name.all
  end
end
