class Reserva < ActiveRecord::Base
  has_many :reserva_servicios
  has_many :servicios, :through => :reserva_servicios
end
