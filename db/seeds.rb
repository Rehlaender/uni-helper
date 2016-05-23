# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

CategoryPost.create(id: 1, name: "Busco")
CategoryPost.create(id: 2, name: "Ofrezco")
Category.create(id: 1, name: "Servicio")
Category.create(id: 2, name: "Articulo")
School.create(id: 1, name: "FIME")
School.create(id: 2, name: "FACPYA")
School.create(id: 3, name: "FOD")
School.create(id: 4, name: "FARQ")

User.create(name: "maemae", user: "maemae", mail: "maemae@gmail.com", telephone: "818098374", password: "maemae")
User.create(name: "Mario", user: "mariomario", mail: "mariomario@gmail.com", telephone: "8180112233", password: "mariomario")
User.create(name: "Rebeca", user: "rebecarebeca", mail: "rebecarebeca@gmail.com", telephone: "8180112244", password: "rebecarebeca")
User.create(name: "Jorge", user: "jorgejorge", mail: "jorgejorge@gmail.com", telephone: "8180112255", password: "jorgejorge")
User.create(name: "Brenda", user: "brendabrenda", mail: "brendabrenda@gmail.com", telephone: "8180112266", password: "brendabrenda")
Admin.create(name: "billowblut", user: "billowblut", email: "blut@gmail.com", password: "123456")
Admin.create(name: "jurb", user: "jurb", email: "jurb@jurb.com", password: "jurbjurb")
Admin.create(name: "admin", user: "admin@example.com", email: "admin@example.com", password: "password")
