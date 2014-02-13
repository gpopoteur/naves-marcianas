class NaveNodriza < ActiveRecord::Base

	validates_presence_of :nombre

	has_many :destinos, class_name: "Aeronave",
					foreign_key: "nave_origen"

	has_many :origen, class_name: "Aeronave",
					foreign_key: "nave_destino"
					
end
