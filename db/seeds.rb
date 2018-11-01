# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
# item = ModelName.new({attribute1: “some value”, attribute2: “some value”})

Supplier.create!(name: 'KB Toys', email: 'kbtoys@email.com', phone_number: '(555)333-2222')
Supplier.create!(name: 'Toys R Us', email: 'toysrus@email.com', phone_number: '(999)777-1111')

Product.create!(supplier_id: 1, name: 'Playstation 2', price: 299, description: 'The PlayStation 2 (PS2) is a home video game console that was developed by Sony Computer Entertainment. It is the successor to the PlayStation and is the second installment in the PlayStation lineup of consoles. It was released in 2000 and competed with Segas Dreamcast, Nintendos GameCube and Microsofts Xbox in the sixth generation of video game consoles.')
Product.create!(supplier_id: 1, name: 'Xbox', price: 299, description: 'Xbox is a video gaming brand created and owned by Microsoft of the United States. It represents a series of video game consoles developed by Microsoft, with three consoles released in the sixth, seventh and eighth generations, respectively. The brand also represents applications (games), streaming services, and an online service by the name of Xbox Live. The brand was first introduced in the United States in November 2001, with the launch of the original Xbox console.')
Product.create!(supplier_id: 2, name: 'GameCube', price: 199, description: 'The GameCube[b] is a home video game console released by Nintendo in Japan and North America in 2001 and Europe and Australia in 2002. The sixth generation console is the successor to the Nintendo 64 and competed with Sonys PlayStation 2 and Microsofts Xbox.')
Product.create!(supplier_id: 1, name: 'Dreamcast', price: 199, description: 'Segas Dreamcast was the first console of the generation[18] and had several features to show an advantage from the competition, including Internet gaming as an optional feature through its built-in modem, and a web browser.')

Image.create!(product_id: 1, image_url: 'https://upload.wikimedia.org/wikipedia/commons/thumb/1/1c/PS2-Versions.jpg/500px-PS2-Versions.jpg')
Image.create!(product_id: 1, image_url: 'https://upload.wikimedia.org/wikipedia/commons/thumb/7/76/PlayStation_2_logo.svg/440px-PlayStation_2_logo.svg.png')
Image.create!(product_id: 1, image_url: 'https://upload.wikimedia.org/wikipedia/commons/thumb/5/5c/PlayStation2-DualShock2.jpg/500px-PlayStation2-DualShock2.jpg')
Image.create!(product_id: 2, image_url: 'https://upload.wikimedia.org/wikipedia/commons/thumb/4/43/Xbox-console.jpg/500px-Xbox-console.jpg')
Image.create!(product_id: 3, image_url: 'https://upload.wikimedia.org/wikipedia/commons/thumb/d/d1/GameCube-Set.jpg/600px-GameCube-Set.jpg')
Image.create!(product_id: 4, image_url: 'https://upload.wikimedia.org/wikipedia/commons/thumb/8/81/Dreamcast-Console-Set.jpg/600px-Dreamcast-Console-Set.jpg')

Category.create!(name: 'Online Capability')
Category.create!(name: 'No Online Capability')

CategoryProduct.create!(product_id: 1, category_id: 1)
CategoryProduct.create!(product_id: 2, category_id: 1)
CategoryProduct.create!(product_id: 3, category_id: 2)
CategoryProduct.create!(product_id: 4, category_id: 1)
