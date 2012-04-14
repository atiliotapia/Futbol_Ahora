class Local < ActiveRecord::Base
	belongs_to :ciudad
	belongs_to :cliente
	
	validates_presence_of :cliente_id, :ciudad_id, :descripcion, :direccion 
end
