class Revision < ActiveRecord::Base

	validates_presence_of :revisior

	has_many :revisionpasajeros
	has_many :pasajeros, through: :revisionpasajeros
end
