
billboard_amount = 5
artist_amount = 8
songs_amount = 23

#Billboards
billboard_amount.times do
  Billboard.create(
    name: "Top 20" + Faker::Music.genre
  )
end
puts "#{billboard_amount} Billboards Created..."

#artists
artist_amount.times do
  Artist.create(
    name: Faker::Cat.name
  )
end
puts "#{artist_amount} Artists Created..."


#songs
songs_amount.times do
  Song.create(
    name: Faker::Space.galaxy,
    artist_id: rand(1..artist_amount),
    billboard_id: rand(1..billboard_amount)
  )
end
puts "#{songs_amount} Songs Created..."