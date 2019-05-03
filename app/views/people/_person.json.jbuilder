json.extract! person, :id, :type, :name, :created_at, :updated_at
json.url person_url(person, format: :json)
