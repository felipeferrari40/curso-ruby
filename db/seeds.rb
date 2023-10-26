Hero.delete_all
Power.delete_all

5.times do
  Hero.create name: Faker::Superhero.name, id: SecureRandom.random_number(1_000_000)
end

5.times do
  Power.create description: Faker::Superhero.name, id: SecureRandom.random_number(1_000_000), level: SecureRandom.hex(4)
end
