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
seed_csv("armani")

# MIU MIU 
puts 'Loading Miu Miu catalog...'
seed_csv("miumiu")

# PERSOL
puts 'Loading Persol catalog...'

# VOGUE
puts 'Loading Vogue catalog...'
seed_csv("vogue")

puts 'All done!'

# temporary images
Glass.all.each do |glass|
  glass.photos.attach(io: File.open("./01_01.png"), filename: "01_01.png", content_type: "image/png")
  glass.photos.attach(io: File.open("./01_02.png"), filename: "01_02.png", content_type: "image/png")
  glass.photos.attach(io: File.open("./01_03.png"), filename: "01_03.png", content_type: "image/png")
  glass.photos.attach(io: File.open("./01_04.png"), filename: "01_04.png", content_type: "image/png")
  glass.photos.attach(io: File.open("./01_05.png"), filename: "01_05.png", content_type: "image/png")
end
