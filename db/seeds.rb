# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
Category.destroy_all

Category.create([{ name: 'Sport' }, { name: 'Bien-être - Beauté' }, { name: 'Yoga - Pilate' },{ name: 'Kids - Famille' }, { name: 'Alimentation' }, { name: 'Culture' }, { name: 'Lifestyle' }])
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Category.all.each do |category|
  3.times do
    fake_descriptions = ["Yoga nidra", "Yoga dance", "Food and chill", "Babouk porc"]
    Event.create(description: fake_descriptions.sample, link: "@quarantine", category: category, date: Time.zone.now - (1..60).to_a.sample.send(['hours', 'minutes', 'days'].sample))
  end
end
