# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#

10.times do |i|
    Task.create(
        name:"Actividad - #{i + 1}",
        photo:"http://lorempixel.com/400/200/food/#{i + 1}",
        description:"lorem ipsum some text random , el 18 e bacán!",
    )
end

6.times do |u|
    User.create(
        name:"usuario #{u + 1}",
        email: "user-#{u + 1}@ex.com",
        password: "123456",
        password_confirmation: "123456",
        avatar: "http://placekitten.com/75/75"
    )
end