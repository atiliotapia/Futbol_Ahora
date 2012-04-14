class Servicio < ActiveRecord::Base
  has_many :reserva_servicios 
  has_many :reservas, :through => :reserva_servicios
end
