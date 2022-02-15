class HomeController < ApplicationController
    def index
        @products = Product.all
    end

    def secret
    end

end
