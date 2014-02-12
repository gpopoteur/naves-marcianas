class RevisionPasajero < ActiveRecord::Base
	belongs_to :revision 
	belongs_to :pasajero
	
end
