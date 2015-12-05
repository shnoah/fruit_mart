class MainController < ApplicationController
    def fruit_select
        
        
        @num_banana = pr 
        @num_apple = 
        @num_tangerine = 
        @num_lemon = 
        @num_grape = 
        
#       redirect_to "/main/baguni"
    end
    
    def fruit_add
    end
    
    def fruit_add_process
        
        
        new_fruit= Fruit.new
        
        new_fruit.code = params[:code]

        new_fruit.address = params[:address]

        new_fruit.name = params[:name]
        new_fruit.price = params[:price]
        new_fruit.quantity = params[:quantity]
        new_fruit.img = params[:img]
        new_fruit.comment = params[:comment]
        
        new_fruit.save
        
    end
    
    def baguni
    end
    
    def index
        @fruits = Fruit.all 
    end

end
