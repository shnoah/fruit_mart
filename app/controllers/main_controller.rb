class MainController < ApplicationController

    def index #메인
        @fruits = Fruit.all 
    end
 
    def fruit_add_process #과일추가
        
        new_fruit= Fruit.new
        
        new_fruit.code = params[:code]
        new_fruit.address = params[:address]
        new_fruit.name = params[:name]
        new_fruit.price = params[:price]
        new_fruit.quantity = params[:quantity]
        new_fruit.img = params[:img]
        new_fruit.comment = params[:comment]
        
        new_fruit.save
        
        #Bucket도 추가
        
        new_bucket= Bucket.new
        
        new_bucket.name = params[:name]
        new_bucket.quantity = 0
        
        new_bucket.save
        
        redirect_to "/main/index"
    end
    
    def fruit_detail #상세페이지 
        @this_fruit = Fruit.find(params[:id]) 
    end
    
    def baguni #장바구니 
    
        @name = params[:name]
        @quantity =params[:quantity]

    end
    



end
