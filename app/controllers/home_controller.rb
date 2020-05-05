class HomeController < ApplicationController
  def top
    if user_signed_in?
      redirect_to  controller: :articles, action: :index
    else
      render 'home/top'
    end
  end
end
