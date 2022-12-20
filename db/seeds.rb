# Write your seeds here!
puts "DESTROYING EVERYTHING YOU EVER LOVED..."

Ghost.destroy_all
HauntedHouse.destroy_all
Haunting.destroy_all

puts "BUILDING EVERYTHING YOU DESTROYED BECAUSE I HAVE TO..."

h1 = HauntedHouse.create(address: "123 Butts Blvd.")
h2 = HauntedHouse.create(address: "456 Tushy Town Rd.")
h3 = HauntedHouse.create(address: "789 Cheeky Ct.")
h4 = HauntedHouse.create(address: "1011 Moon St.")
h5 = HauntedHouse.create(address: "1213 Assey Ave.")

g1 = Ghost.create(name: "Todd", age_at_death: 69)
g2 = Ghost.create(name: "Betsy", age_at_death: 69)
g3 = Ghost.create(name: "Carl", age_at_death: 69)
g4 = Ghost.create(name: "Torrey", age_at_death: 69)
g5 = Ghost.create(name: "Stehpanie", age_at_death: 69)

Haunting.create(ghost_id: g1.id, haunted_house_id: h1.id)
Haunting.create(ghost_id: g2.id, haunted_house_id: h2.id)
Haunting.create(ghost_id: g3.id, haunted_house_id: h3.id)
Haunting.create(ghost_id: g4.id, haunted_house_id: h4.id)
Haunting.create(ghost_id: g5.id, haunted_house_id: h5.id)

puts "...done dealing with you shit..."
puts "...hope youre happy..."
puts "you're welcome"