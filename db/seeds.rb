# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
SkiShop.destroy_all
SkiShop.destroy_all

ase = SkiShop.create!(name: "American Ski Exchange", location_quantity: 1, rents_clothes: true)
christy = SkiShop.create!(name: "Christy Sports", location_quantity: 68, rents_clothes: false)

ase.skis.create!(fleet: "demo", manufacturer: "Rossignol", model: "BlackOps", year: 2022, length: 192, width: 98, needs_tuned: false)
ase.skis.create!(fleet: "demo", manufacturer: "Armada", model: "ARV 106", year: 2022, length: 172, width: 106, needs_tuned: true)
ase.skis.create!(fleet: "sport", manufacturer: "Rossignol", model: "Experience 80", year: 2018, length: 156, width: 80, needs_tuned: true)
ase.skis.create!(fleet: "sport", manufacturer: "Rossignol", model: "Experience 80", year: 2018, length: 172, width: 80, needs_tuned: false)

christy.skis.create!(fleet: "sport", manufacturer: "Rossignol", model: "Experience 80", year: 2018, length: 156, width: 80, needs_tuned: true)
christy.skis.create!(fleet: "sport", manufacturer: "Rossignol", model: "Experience 80", year: 2018, length: 172, width: 80, needs_tuned: false)
christy.skis.create!(fleet: "demo", manufacturer: "Rossignol", model: "BlackOps", year: 2022, length: 172, width: 98, needs_tuned: true)
christy.skis.create!(fleet: "demo", manufacturer: "Atomic", model: "Bent 110", year: 2022, length: 180, width: 110, needs_tuned: false)
