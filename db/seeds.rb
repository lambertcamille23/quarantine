# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:


Category.destroy_all

Category.create([{ name: 'YOGA / PILATES', color: '#EDAF50' }, { name: 'SPORT', color: '#C35B37' }, { name: 'LIFESTYLE', color: '#EDCDBC' },{ name: 'CULTURE', color: '#F39B8F' }, { name: 'FOOD', color: '#065A69' }, { name: 'KIDS / FAMILLE', color: '#EDAF50' }, { name: 'BIEN-ÊTRE / BEAUTÉ', color: '#C35B37' }])
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
#Category.all.each do |category|
  #3.times do
    #fake_descriptions = ["venez faire du sport avec une bli", "c'est l'heure de faire des trucs"]
   #Event.create(description: fake_descriptions.sample, link: "@quarantine", title:"YOGA", category: category, date: Time.zone.now - (1..60).to_a.sample.send(['hours', 'minutes', 'days'].sample))
  #end
#end
