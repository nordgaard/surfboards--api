json.array! @surfboards.each do |surfboard|
  json.id surfboard.id
  json.name surfboard.name
  json.height surfboard.height
  json.width surfboard.width 
end