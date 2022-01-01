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

puts 'Loading Armani catalog...'
# ARMANI

puts 'Loading Gucci catalog...'
# GUCCI

puts 'Loading Miu Miu catalog...'
# MIU MIU 

puts 'Loading Persol catalog...'
# PERSOL

puts 'Loading Vogue catalog...'
# VOGUE
seed_csv("vogue")

puts 'All done!'
