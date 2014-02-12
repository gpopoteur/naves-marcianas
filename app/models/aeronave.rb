class Aeronave < ActiveRecord::Base

	belongs_to :origen, class_name: "NaveNodriza",
					foreign_key: "nave_origen"

	belongs_to :destino, class_name: "NaveNodriza",
					foreign_key: "nave_destino"

	has_many :movimientos
end
