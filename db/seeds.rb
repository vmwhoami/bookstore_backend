# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
books = ['Alone on', 'A Wide', 'Wide Sea	Michael Morpurgo',	'The Rime of the Ancient Mariner',' Samuel Taylor Coleridge
An Acceptable Time' ,'Antic Hay',	'Aldous Huxley	Edward II', 'An Evil Cradling']

cat = ["Fiction","Adventure","Horror", "Action"]

10.times do |num|
Book.create(
  name: books.sample,
  category:cat.sample
)
end

puts "***"*100 
puts "Books created"