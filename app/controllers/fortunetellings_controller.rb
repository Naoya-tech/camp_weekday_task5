class FortunetellingsController < ApplicationController
  include FortunetellingsHelper

  def show
    @birthday = params[:birthday]
    @year = @birthday[0,4]
    @month = @birthday[4,2]
    @day = @birthday[6,2]
    @constellation = choose_constellation(@birthday[4,4].to_i)
    if Date.today.strftime("%m%d") == @birthday[4,4]
      @message = "今日があなたの誕生日です。"
    end
  end
end
