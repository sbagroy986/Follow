class DashController < ApplicationController
  def view
   @client = Twitter::REST::Client.new do |config|
     config.consumer_key        = "i9uQC4pd5zvhO1XuuVweuAUXl"
     config.consumer_secret     = "tYpV4Eg4EXcFJmTVraFEqEQm0hNkAgzXA70HJvSMZjfvtElanV"
     config.access_token        = "2895338556-OQjfqvq7stJpgQmAY06Sy5iT1cSZXiT3QP9LbUo"
     config.access_token_secret = "n8HRDu7qsUZthqApCZdEp3pQlAaVbPizByIXB1zYhvzHD" 
   end
   @names = User.find(session[:user_id]).names
  end
   def destroy
    @name.destroy
    respond_to do |format|
      format.html { redirect_to view_dash_path, notice: 'Name was successfully destroyed.' }
      format.json { head :no_content }
    end
  end
end
