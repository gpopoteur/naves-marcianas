json.array!(@movimientos) do |movimiento|
  json.extract! movimiento, :id, :tipo_movimiento, :pasajero_id, :aeronave_id
  json.url movimiento_url(movimiento, format: :json)
end
