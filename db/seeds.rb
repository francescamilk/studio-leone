require 'csv'

def seed_csv(brand)
  CSV.foreach("db/catalogs/#{brand}_cat.csv", headers: :first_row) do |row|
    Glass.create!(
      sku: row['sku'].upcase,
      name: row['name'].capitalize,
      brand: row['brand'].capitalize,
      price: row['price'].to_f,
      color: row['color'].capitalize,
      frame: row['frame'].capitalize,
      material: row['material'].capitalize,
      measure: row['measure'],
      sunglasses: row['sunglasses'] == 'true',
      woman: row['woman'] == 'true'
    ) 
  end
end

puts 'Clearing db...'
Glass.destroy_all

# ARMANI
puts 'Loading Armani catalog...'

# MIU MIU 
puts 'Loading Miu Miu catalog...'
seed_csv("miumiu")

# PERSOL
puts 'Loading Persol catalog...'

# VOGUE
puts 'Loading Vogue catalog...'
seed_csv("vogue")

puts 'All done!'
