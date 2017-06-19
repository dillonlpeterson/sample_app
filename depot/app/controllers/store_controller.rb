class StoreController < ApplicationController
  include CurrentCart
  before_action :set_cart
  def index
    # Alphabetical Order!
    @products = Product.order(:title)
    session_incrementer
  end

    private
      def session_incrementer
        if session[:counter].nil?
          session[:counter] = 1
        else
          session[:counter] = session[:counter] + 1
        end
      end
end
