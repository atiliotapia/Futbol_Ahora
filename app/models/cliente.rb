class Cliente < ActiveRecord::Base
	belongs_to :documentotipo	
	belongs_to :clientetipo	
	has_many :eventos	
	has_many :equipos	
	has_many :comentarios	
	
	has_many :locals
	
	has_many :usuarios
	
	validates_presence_of :nombre, :apellido
end
