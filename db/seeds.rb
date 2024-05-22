puts "Cleaning database..."
Restaurant.destroy_all

puts "Creating restaurants..."
golden_dragon = { name: 'Golden Dragon', address: '123 Chinatown Ave', phone_number: '555-123-4567', category: 'chinese'}
la_Bella_Italia = { name: 'La Bella Italia', address: '456 Roma St', phone_number: '555-234-5678', category: 'italian'}
sushi_Sakura = { name: 'Sushi Sakura', address: '789 Tokyo Rd', phone_number: '555-345-6789', category: 'japanese'}
le_Petit_Paris = { name: 'Le Petit Paris', address: '101 Champs-Élysées', phone_number: '555-456-7890', category: 'french'}
belgian_Waffles = { name: 'Belgian Waffles', address: '202 Brussels Ln', phone_number: '555-567-8901', category: 'belgian'}

[golden_dragon,la_Bella_Italia,sushi_Sakura,le_Petit_Paris,belgian_Waffles ].each do |attributes|
  restaurant = Restaurant.create!(attributes)
  puts "Created #{restaurant.name}"
end
puts "Finished!"

