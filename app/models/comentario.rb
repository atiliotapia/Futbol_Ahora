class Comentario < ActiveRecord::Base
	belongs_to :cliente
	
	validates_presence_of :comentario, :cliente_id
end
