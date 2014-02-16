class Aeronave < ActiveRecord::Base

	validates_presence_of :nombre
	validates_presence_of :max_marcianos

	belongs_to :origen, class_name: "NaveNodriza",
					foreign_key: "nave_origen"

	belongs_to :destino, class_name: "NaveNodriza",
					foreign_key: "nave_destino"

	has_many :movimientos
	has_many :pasajeros
end
