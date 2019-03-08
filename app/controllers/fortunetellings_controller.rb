class FortunetellingsController < ApplicationController

  def show
    @birthday = params[:birthday]
    @year = @birthday[0,4]
    @month = @birthday[4,2]
    @day = @birthday[6,2]
    
    
    
    
    
  end
end
