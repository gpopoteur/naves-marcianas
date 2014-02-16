class Pasajero < ActiveRecord::Base

	validates_presence_of :nombre
	
	has_many :movimientos
	has_many :revisionpasajeros
	has_many :revisiones, through: :revisionpasajeros

	belongs_to :aeronave
end
