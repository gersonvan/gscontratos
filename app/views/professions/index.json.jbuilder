json.array!(@professions) do |profession|
  json.extract! profession, :id, :profissao
  json.url profession_url(profession, format: :json)
end
