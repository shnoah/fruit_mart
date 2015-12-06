class MainController < ApplicationController

    def index #메인
    
        @fruits = Fruit.all 
    
    end
 
    def fruit_add_process #과일추가
        
        
        #수정 필요함
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


        #메인에서 넘어온 과일의 이름과 수량    
        @name = params[:name]
        @quantity =params[:quantity]

        #과일 갯수만큼 반복
        num = Fruit.last.id
       
        if @quantity!=nil           
            for i in 0..num-1
            #수량 0은 제외
                if @quantity[i]!='0'
                    #기존 장바구니 내용과 현재 요청을 합산
                    tmp_bucket = Bucket.where(name: @name[i])
                    tmp2 = @quantity[i].to_i
                    tmp_bucket.first.update_attribute(:quantity, tmp_bucket.first.quantity+tmp2)
                end            
            end
        end
    end
    
    
    
    def order #주문하기
        num=Fruit.last.id       

        
        @sum = 0
 

       for i in 1..num
           tmp_q=Bucket.find(i).quantity
           fruit=Fruit.find(i)           
         
           #마일리지 계산
           tot=fruit.price * tmp_q.to_i  
           @sum+=tot
                      
           #Fruit 감소
           fruit.update_attribute(:quantity, fruit.quantity-tmp_q)       
       
           #Orderlist 추가 
           if tmp_q!=0           
               new_order = Orderlist.new
               
               if current_user
                 new_order.user_id = current_user.email
               end
               
               new_order.name = fruit.name
               new_order.quantity = tmp_q
    
               new_order.save
           end
       
           #bucket 초기화
           Bucket.find(i).update_attribute(:quantity, 0)
       end
       
        user = User.where(email: current_user.email).take
        user.update_attribute(:mileage, user.mileage+(@sum*0.01).ceil)
       
        
    end
    
    def reset 
       num=Fruit.last.id       

       for i in 1..num
                Bucket.find(i).update_attribute(:quantity, 0)
       end
       redirect_to "/main"
       
        
    end
    
    def myorder 
        
        
        @order = Orderlist.all
        
    end
    



end
