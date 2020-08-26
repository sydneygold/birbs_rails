# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

tree1 = Tree.create({species: "Maple", age: 69})
tree2 = Tree.create({species: "Cherry Blossom Tree", age: 3})
tree3 = Tree.create({species: "Pear Tree", age: 57})

birb1 = Bird.create({name: "Petey", species: "Parrot", age: 3, tree: tree1})
birb2 = Bird.create({name: "Murica", species: "Bald Eagle", age: 6, tree: tree2})
birb3 = Bird.create({name: "Dumb Birb", species: "Pigeon", age: 8, tree: tree3})
