class FortunetellingsController < ApplicationController
  include FortunetellingsHelper

  def show
    @birthday = params[:birthday]
    @year = @birthday[0,4]
    @month = @birthday[4,2]
    @day = @birthday[6,2]
    date_format = "%Y%m%d"
    @age = (Date.today.strftime(date_format).to_i - @birthday.to_i) / 10000
    @constellation = choose_constellation(@birthday[4,4].to_i)
    @luck = ["大吉","中吉","吉","小吉","凶","大凶"].sample
    if Date.today.strftime("%m%d") == @birthday[4,4]
      @message = "今日があなたの誕生日です。"
    end
  end
end
