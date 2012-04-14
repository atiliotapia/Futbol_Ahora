class Usuario < ActiveRecord::Base
belongs_to :cliente

validates_presence_of :correo, :clave, :cliente_id

end
