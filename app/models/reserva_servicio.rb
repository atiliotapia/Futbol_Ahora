class ReservaServicio < ActiveRecord::Base
  belongs_to :reserva
  belongs_to :servicio
end
