json.array!(@aeronaves) do |aeronafe|
  json.extract! aeronafe, :id, :nombre, :max_marcianos, :nave_origen, :nave_destino
  json.url aeronafe_url(aeronafe, format: :json)
end
