json.array! @surfboards.each do |surfboard|
  json.id surfboard.id
  json.name surfboard.name
  json.feet surfboard.feet
  json.inches surfboard.inches 
  json.color surfboard.color 
end