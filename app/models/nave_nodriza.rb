class NaveNodriza < ActiveRecord::Base

	has_many :destinos, class_name: "Aeronave",
					foreign_key: "nave_origen"

	has_many :origen, class_name: "Aeronave",
					foreign_key: "nave_destino"
					
end
