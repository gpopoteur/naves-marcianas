class Movimiento < ActiveRecord::Base

	belongs_to :aeronave
	belongs_to :pasajero

end
