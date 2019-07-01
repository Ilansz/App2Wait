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
                 remote_photo_url: "https://media.giphy.com/media/3o752olKiKtMfQunzW/giphy.gif")

Challenge.create(name: "pushups",
                 remote_photo_url: "https://media.giphy.com/media/PfFtibPKBbQrK/giphy.gif")

Challenge.create(name: "get phone numbers",
                 remote_photo_url: "https://media.giphy.com/media/11SIBu3s72Co8w/giphy.gif")

Challenge.create(name: "the worm",
                 remote_photo_url: "https://media.giphy.com/media/YiJn0dXMKDkhHNXDLC/giphy.gif")
