  json.board_id surfboard.id          #first part of this will be the variable name in JSON view
  json.board_name surfboard.name
  json.feet surfboard.feet
  json.inches surfboard.inches 
  json.surfspots surfboard.surfspots do |surfspot|
    json.name surfspot.name
    json.gnarliness surfspot.gnar_factor
  end

