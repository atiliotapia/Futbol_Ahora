class Evento < ActiveRecord::Base
	belongs_to :cliente
	has_many :equipos	
	has_many :clientes, :through => :equipos
	
	validates_presence_of :descripcion, :premio, :cantidad_equipos
end
