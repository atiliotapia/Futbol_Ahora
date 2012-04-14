class Clientetipo < ActiveRecord::Base
  has_many :clientes	
  has_many :publicidads	
end
