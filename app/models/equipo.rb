class Equipo < ActiveRecord::Base
  belongs_to :evento
  belongs_to :cliente
end
