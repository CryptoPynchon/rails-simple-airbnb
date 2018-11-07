puts 'Cleaning database...'
Flat.destroy_all

puts 'Creating flats...'
flats_attributes = [
  {
    name:         'bitch',
    address:      '7 Boundary St, London E2 7JE'
  },
  {
    name:         "pritza by steve brule, phd",
    address:      '56A Shoreditch High St, London E1 6PQ'
  }
]

flats_attributes.each do |hash|
  Flat.create!(hash)
end

puts 'Finished!'
