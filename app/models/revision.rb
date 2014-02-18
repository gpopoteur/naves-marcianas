class Revision < ActiveRecord::Base

	validates_presence_of :revisior
	validates_presence_of :aeronave

	has_many :revision_pasajeros
	has_many :pasajeros, through: :revision_pasajeros
	belongs_to :aeronave
end
