class Product < ApplicationRecord

  scope :search, lambda {|query| where(["name LIKE ?","%#{query}%" ])}

end
