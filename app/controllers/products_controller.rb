class ProductsController < ApplicationController
  def index
    #@products = Shoppe::Product.root.ordered.includes(:product_categories, :variants)
    #@products = @products.group_by(&:product_category)
    @product = Shoppe::Product.root.first

  end

  def show
    @product = Shoppe::Product.root.first
  end

  def buy
    quantity = params[:q].to_i
    @product = Shoppe::Product.root.find_by_permalink!(params[:permalink])

    current_order.order_items.add_item(@product, quantity)
    redirect_to checkout_path, :notice => "added to card!"
  end
end
