class StaticPagesController < ApplicationController
    def home
    end
    
    def index
      	@products = Product.all
      	@order_item = current_order.order_items.new
    end
end