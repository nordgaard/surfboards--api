  json.id surfboard.id          
  json.name surfboard.name
  json.feet surfboard.feet
  json.inches surfboard.inches 
  json.color surfboard.color 
  json.surfspots surfboard.surfspots do |surfspot|
    json.name surfspot.name
    json.gnar_factor surfspot.gnar_factor
  end

