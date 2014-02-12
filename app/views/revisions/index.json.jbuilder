json.array!(@revisions) do |revision|
  json.extract! revision, :id, :revisior, :aeronave_id
  json.url revision_url(revision, format: :json)
end
