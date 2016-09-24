json.array!(@action_objects) do |action_object|
  json.extract! action_object, :id, :objeto
  json.url action_object_url(action_object, format: :json)
end
