class Product < ApplicationRecord
  has_and_belongs_to_many :categories
  has_many :stocks
  #Punto 6
  def available?()
    available = false
    stocks.each do |stock|
      available = true if stock.stock
    end
    return available  
  end    

  
end
