class StoreController < ApplicationController
  def index
    @products = Product.order(:title)
    # if session[:counter].nil?
    #   session[:counter] = 1;
    # else
    #   session[:counter]++
    # end
    # @count_sessions = session[:counter]
  end
end

