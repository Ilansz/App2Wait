# puts 'Destroying old database...'
# User.destroy_all
# Challenge.destroy_all
# GroupUser.destroy_all
# Group.destroy_all

# puts "Generating userts"

# # User.create!(email: 'axel@app2wait.com',
# #             password: '123456',
# #             username: 'Cuervo',
# #             remote_photo_url: 'AxelResnik.png',
# #             average_lateness: rand(0..25))

# # User.create!(email: ,
# #             password: '123456',
# #             username: ,
# #             photo: ,
# #             average_lateness: rand(0..25))

# puts "Finished generating users"

# puts "Done seeding!"

Challenge.create(name: "chicken dance",
                 photo: "https://source.unsplash.com/random")

Challenge.create(name: "pushups",
                 photo: "https://source.unsplash.com/random")

Challenge.create(name: "get phone numbers",
                 photo: "https://source.unsplash.com/random")

Challenge.create(name: "a shot on you",
                 photo: "https://source.unsplash.com/random")
