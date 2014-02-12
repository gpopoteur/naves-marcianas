class Pasajero < ActiveRecord::Base

	has_many :movimientos
	has_many :revisionpasajeros
	has_many :revisiones, through: :revisionpasajeros
end
