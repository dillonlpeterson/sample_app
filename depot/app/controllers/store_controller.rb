class StoreController < ApplicationController
  def index
    # Alphabetical Order!
    @products = Product.order(:title)
  end
end
