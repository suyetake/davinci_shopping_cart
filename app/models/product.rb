class Product < ActiveRecord::Base

  validates :quantity, :presence => { :if => }
end
