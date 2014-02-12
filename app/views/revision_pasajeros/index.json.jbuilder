json.array!(@revision_pasajeros) do |revision_pasajero|
  json.extract! revision_pasajero, :id, :revision_id, :pasajero_id
  json.url revision_pasajero_url(revision_pasajero, format: :json)
end
