# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# seed file allows you to seed/populate the database 

10.times do |i|

  Article.create([
      {
        title: "THis is title #{i}",
        body: 'loremn impusum text',
        importance: rand(1..10) 
      }
      ])

      end