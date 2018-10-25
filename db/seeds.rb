# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
# item = ModelName.new({attribute1: “some value”, attribute2: “some value”})

Supplier.create(name: 'KB Toys', email: 'kbtoys@email.com', phone_number: '(555)333-2222')
Supplier.create(name: 'Toys R Us', email: 'toysrus@email.com', phone_number: '(999)777-1111')

Product.create(name: 'Pokeball', price: '10', description: 'This type of Poké Ball is the weakest and the only type typically available at the beginning of the Pokémon games. It has a catch rate modifier of x1 in the catch formula.')
Product.create(name: 'Great Ball', price: '15', description: 'a type of Poké Ball that has a 50% higher chance to successfully catch a Pokémon than that of a regular Poké Ball.')
Product.create(name: 'Ultra Ball', price: '20', description: 'The Ultra Ball has a 100% higher chance to catch a Pokémon than a regular Poké Ball, and a 33% higher chance than that of a Great Ball. It has a catch multiplier of x2.')
Product.create(name: 'Master Ball', price: '100', description: 'The Master Ball is the rarest ball available in any game. It has a 100% catch rate.')

Image.create(product_id: 1, image_url: 'https://vignette.wikia.nocookie.net/pokemon/images/4/44/Pok%C3%A9_Ball.jpg/revision/latest?cb=20090507215041')
Image.create(product_id: 1, image_url: 'https://assets.pinshape.com/uploads/image/file/26834/container_pokeball-opens-and-closes-3d-printing-26834.jpg')
Image.create(product_id: 1, image_url: 'https://vignette.wikia.nocookie.net/youtubepoop/images/4/4c/Pokeball.png/revision/latest?cb=20150418234807')
Image.create(product_id: 2, image_url: 'https://vignette.wikia.nocookie.net/pokemon/images/a/ac/Great_Ball_Artwork.png/revision/latest?cb=20101027002223')
Image.create(product_id: 3, image_url: 'https://vignette.wikia.nocookie.net/pokemon/images/f/f1/UltraBallArt.png/revision/latest?cb=20101106022319')
Image.create(product_id: 4, image_url: 'https://vignette.wikia.nocookie.net/pokemon/images/f/fa/Master_Ball_Artwork.png/revision/latest?cb=20101027003855')
