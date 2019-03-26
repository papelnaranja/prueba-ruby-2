# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
10.times do |i|
    Task.create(
        name:"Actividad - #{i + 1}",
        photo:"http://lorempixel.com/400/200/food/#{i + 1}",
        description:"lorem ipsum some text random , el 18 e bacán!",
    )
    User.create(
        name:"usuario #{i + 1}",
        email: "ejemplo-#{i + 1}@ex.com",
        password: "123456",
        password_confirmation: "123456"
    )
end
