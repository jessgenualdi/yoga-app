json.array! @anatomies.each do |anatomy|
  json.id anatomy.id
  json.anatomy_name anatomy.anatomy_name
end