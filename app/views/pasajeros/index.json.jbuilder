json.array!(@pasajeros) do |pasajero|
  json.extract! pasajero, :id, :nombre
  json.url pasajero_url(pasajero, format: :json)
end
