json.array!(@soundboards) do |soundboard|
  json.extract! soundboard, :id
  json.url soundboard_url(soundboard, format: :json)
end
