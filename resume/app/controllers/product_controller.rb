class ProductController < ApplicationController
  def index
    @products = Product.paginate :per_page => 5, :page => params[:page]
  end

  def new
    @product = Product.new
  end

  def create
    @product = Product.create params[:product]
      redirect_to :controller => :product, :action => :show, :id => @product.id
  end

  def update
  end

  def delete
  end

  def search
    @result = Product.search params[:search][:find]
    p "="*100
    p @result
    p "="*100
  end

  def show
    @product = Product.find params[:id]
  end

end
