class ProductsController < ApplicationController
  def index
    @user = User.find_by(id: params[:user_id])
    @my_products = @user.products.neworder('created_at DESC').limit(10)
  end

  def new
    @user = User.find_by(id: params[:user_id])
    @my_products = @user.products.new
  end

  def create
  end
end
