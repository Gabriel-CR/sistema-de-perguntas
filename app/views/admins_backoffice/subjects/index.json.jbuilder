json.array! @subjects do |subject|
  json.extract! subject, :id, :description, :questions_count
end
