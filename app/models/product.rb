class Product < ActiveRecord::Base
  attr_accessible :codigo, :descripcion, :nombre, :precio
end
