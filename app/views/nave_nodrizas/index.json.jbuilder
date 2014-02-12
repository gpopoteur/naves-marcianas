json.array!(@nave_nodrizas) do |nave_nodriza|
  json.extract! nave_nodriza, :id, :nombre
  json.url nave_nodriza_url(nave_nodriza, format: :json)
end
