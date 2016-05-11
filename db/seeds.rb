20.times do 
  Surfboard.create(
    height: Faker::Number.between(1, 10),
    width: Faker::Number.between(1, 10),
    color: Faker::Color.color_name,
  )
end

