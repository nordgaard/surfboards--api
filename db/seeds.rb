20.times do 
  Surfboard.create(
    name: Faker::Name.first_name,
    feet: Faker::Number.between(1, 10),
    inches: Faker::Number.between(1, 12),
    color: Faker::Color.color_name,
  )
end


50.times do 
  Surfspot.create(
    name: Faker::Team.creature.capitalize,
    gnar_factor: Faker::Book.genre,
    surfboard_id: rand(1..20),
  )
end
