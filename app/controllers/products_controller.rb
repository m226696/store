class ProductsController < ApplicationController


    def index
        if session[:cart].nil?
            session[:cart] = []
        end
        @products = Product.all
        @cart = session[:cart]
    end

    def show
        @product = Product.find(params[:id])
    end
    
    def new
        @product = Product.new
    end
    
    def create
        @product = Product.new(product_params)
    
        if @product.save
          redirect_to @product
        else
          render :new, status: :unprocessable_entity
        end
    end
    
    def edit
        @product = Product.find(params[:id])
    end
    
    def update
        @product = Product.find(params[:id])
    
        if @product.update(product_params)
          redirect_to @product
        else
          render :edit, status: :unprocessable_entity
        end
    end
    
    def destroy
        @product = Product.find(params[:id])
        @product.destroy
    
        redirect_to root_path, status: :see_other
    end

    def buy
        if session[:cart].nil?
            session[:cart] = []
        end
        product = Product.find(params[:id])
        session[:cart].append(product)
        @product.stock = @product.decrement(:stock, 1)
        @product.update(stock: @product.stock)
        redirect_to :root
    end

    def checkout
        @cart = session[:cart]
        session[:cart] = []
    end

    private
    def product_params
      params.require(:product).permit(:title,:description,:seller, :price, :status, :quantity, :stock)

    end

end