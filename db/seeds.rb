# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

Hero.destroy_all
Power.destroy_all
HeroPower.destroy_all

hero_one = Hero.create(name: "Kamala Khan", super_name: "Ms. Marvel")
hero_two = Hero.create( name: "Doreen Green", super_name: "Squirrel Girl")
hero_three = Hero.create( name: "Gwen Stacy", super_name: "Spider-Gwen")

power_one = Power.create(name: "super strength", description: "gives the wielder super-human strengths")
power_two = Power.create(name: "flight", description: "gives the wielder the ability to fly through the skies at supersonic speed")
power_three = Power.create(name: "shoot webs", description: "gives the wielder the ability to shoot webs")

HeroPower.create(strength: "Strong", power_id: power_one.id, hero_id: hero_one.id)
HeroPower.create(strength: "Weak", power_id: power_two.id, hero_id: hero_two.id)
HeroPower.create(strength: "Strong", power_id: power_three.id, hero_id: hero_three.id)
HeroPower.create(strength: "Average", power_id: power_one.id, hero_id: hero_three.id)
