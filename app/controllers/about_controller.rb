class AboutController < ApplicationController
    skip_before_action :authenticate_user!

  def view
  end
end
