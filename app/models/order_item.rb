class OrderItem < ApplicationRecord

  belongs_to :order
  belongs_to :stock

  def product
    stock.product
  end  
end
