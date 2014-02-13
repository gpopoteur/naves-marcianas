class TipoMovimiento 
	@entrada = 0
	@salida = 1
	@tipos = [Tipo.new(0,"Entrada"), Tipo.new(1,"Salida")]

	class << self
		attr_accessor :entrada, :salida, :tipos
	end
end