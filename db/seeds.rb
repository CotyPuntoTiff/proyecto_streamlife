# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.delete_all 
Post.delete_all 
Coment.delete_all 

user1 = User.create(user_name: "CotyPuntoTiff",email: "coty@mail.com", encrypted_password: "password")
user2 = User.create(user_name: "admin",email: "admin@mail.com", encrypted_password: "password", admin: true)

Post.create(
    [
        {
            title: "My cuenta de StreamLife",
            content: "Hoy abri mi cuenta de StreamLife, me gusto la aplicacion y espero que me sigan para que no se pierdan mi stream de hoy <3",
            user_id: user1.id,
            program: DateTime.strptime("04/06/2021 20:00", "%m/%d/%Y %H:%M")
        },
        {
            title: "Prendo stream de LOL",
            content: "Con mi equipo vamos a estar jugando LOL! uno para todos, podremos ganar eligiendo personajes random??",
            user_id: user1.id,
            program: DateTime.strptime("04/07/2021 21:30", "%m/%d/%Y %H:%M")
        }
    ]
)