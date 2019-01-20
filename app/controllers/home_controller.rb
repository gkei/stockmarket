class HomeController < ApplicationController
  
  def index
    if params[:id] == ""
          @nothing = 'Nee man, jy het vergeet om die simbool in te tik'
    else
        begin
          @stock = StockQuote::Stock.quote(params[:id] )
        rescue 
          @err2 = "Nee man, daardie simbool bestaan nie. Probeer weer."
        end        
    end
  end
  
  def about
  end
end
