class Revision < ActiveRecord::Base
	has_many :revisionpasajeros
	has_many :pasajeros, through: :revisionpasajeros
end
