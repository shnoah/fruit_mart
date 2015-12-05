class MainController < ApplicationController
    def fruit_select
        num_banana = params[:banana]
        num_apple  = params[:apple]
        num_tangerine = params[:tangerine]
        num_lemon = params[:lemon]
        num_grape = params[:grape]
        num_kiwi = params[:kiwi]    
        
        
        redirect_to "/main/baguni"
    end
    
    def fruit_add
    end
    
    def fruit_add_process
    end
    
    
    def baguni
        
    end

end
