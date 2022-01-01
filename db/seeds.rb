require 'csv'

def seed_csv(brand)
  CSV.foreach("db/catalogs/#{brand}_cat.csv", headers: :first_row) do |row|
    Glass.create!(
      sku: row['sku'],
      name: row['name'],
      brand: row['brand'],
      price: row['price'].to_f,
      color: row['color'],
      frame: row['frame'],
      material: row['material'],
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

# PERSOL
puts 'Loading Persol catalog...'

# VOGUE
puts 'Loading Vogue catalog...'
seed_csv("vogue")

puts 'All done!'
