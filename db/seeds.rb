puts 'Destroying old database...'
GroupsUser.destroy_all
puts 'GroupsUser destroy'
Video.destroy_all
puts "Video destroy"
User.destroy_all
puts "User destroy"
Group.destroy_all
puts "Groups destroy"
Challenge.destroy_all
puts "Challenge destroy"

puts "Generating Users"

cuervo = User.new(email: 'axel@app2wait.com',
            password: '123456',
            username: 'Cuervo',
            remote_photo_url: 'https://res.cloudinary.com/dn4gmiobc/image/upload/v1561971341/dkimxfxzsauhsl7ijsvh.png',
            average_lateness: rand(0..25))

marko = User.new(email: 'marko@app2wait.com',
            password: '123456',
            username: 'Marko',
            remote_photo_url: 'http://res.cloudinary.com/dn4gmiobc/image/upload/v1561978082/gxn0tymnoggmdbhayhfn.png',
            average_lateness: rand(0..25))

ben = User.new(email: 'ben@app2wait.com',
            password: '123456',
            username: 'Ben',
            remote_photo_url: 'http://res.cloudinary.com/dn4gmiobc/image/upload/v1561978084/f0ts7c7y3p6xmngnckxo.png',
            average_lateness: rand(0..25))

benya = User.new(email: 'benya@app2wait.com',
            password: '123456',
            username: 'Benya',
            remote_photo_url: 'http://res.cloudinary.com/dn4gmiobc/image/upload/v1561978086/lrvevguguuho8951i7kf.png',
            average_lateness: rand(0..25))

charly = User.new(email: 'charly@app2wait.com',
            password: '123456',
            username: 'Charly',
            remote_photo_url: 'http://res.cloudinary.com/dn4gmiobc/image/upload/v1561978087/uugd4jho6kjam6yaa0qh.png',
            average_lateness: rand(0..25))

clara = User.new(email: 'clara@app2wait.com',
            password: '123456',
            username: 'Clara',
            remote_photo_url: 'http://res.cloudinary.com/dn4gmiobc/image/upload/v1561978088/jqnkwefbacd9nfsw5k8w.jpg',
            average_lateness: rand(0..25))

david = User.new(email: 'david@app2wait.com',
            password: '123456',
            username: 'David',
            remote_photo_url: 'http://res.cloudinary.com/dn4gmiobc/image/upload/v1561978090/evphzyzlqtjo4fux6ala.png',
            average_lateness: rand(0..25))

gaby = User.new(email: 'gaby@app2wait.com',
            password: '123456',
            username: 'Gaby',
            remote_photo_url: 'http://res.cloudinary.com/dn4gmiobc/image/upload/v1561978091/bvc2vczpy6isnjaeudox.png',
            average_lateness: rand(0..25))

ilan = User.new(email: 'ilan@app2wait.com',
            password: '123456',
            username: 'Ilan',
            remote_photo_url: 'http://res.cloudinary.com/dn4gmiobc/image/upload/v1561978092/nfsqulkptkrpbljaujdi.png',
            average_lateness: rand(0..25))

joe = User.new(email: 'joe@app2wait.com',
            password: '123456',
            username: 'Joe',
            remote_photo_url: 'http://res.cloudinary.com/dn4gmiobc/image/upload/v1561978361/tjjoec9fy9yhh2qt2yup.png',
            average_lateness: rand(0..25))

max = User.new(email: 'max@app2wait.com',
            password: '123456',
            username: 'Max',
            remote_photo_url: 'http://res.cloudinary.com/dn4gmiobc/image/upload/v1561978093/sfgut6oafmvrdbd6ev7j.png',
            average_lateness: rand(0..25))

maya = User.new(email: 'maya@app2wait.com',
            password: '123456',
            username: 'Maya',
            remote_photo_url: 'http://res.cloudinary.com/dn4gmiobc/image/upload/v1561978094/e3mhhepfpnimwhz0yfma.png',
            average_lateness: rand(0..25))

mel = User.new(email: 'mel@app2wait.com',
            password: '123456',
            username: 'Mel',
            remote_photo_url: 'http://res.cloudinary.com/dn4gmiobc/image/upload/v1561978096/nqwbbknexnqsf8twpusq.png',
            average_lateness: rand(0..25))

rabea = User.new(email: 'rabea@app2wait.com',
            password: '123456',
            username: 'Rabea',
            remote_photo_url: 'http://res.cloudinary.com/dn4gmiobc/image/upload/v1561978097/g45lunatp16ywfmrxnit.jpg',
            average_lateness: rand(0..25))

romy = User.new(email: 'romy@app2wait.com',
            password: '123456',
            username: 'Romy',
            remote_photo_url: 'http://res.cloudinary.com/dn4gmiobc/image/upload/v1561978098/t49zxpy7ueb7jajf0t5d.png',
            average_lateness: rand(0..25))

valentina = User.new(email: 'valentina@app2wait.com',
            password: '123456',
            username: 'Valentina',
            remote_photo_url: 'http://res.cloudinary.com/dn4gmiobc/image/upload/v1561978364/o6z6zzjtrt3sxdfduzra.png',
            average_lateness: rand(0..25))
cuervo.save!
marko.save!
ben.save!
benya.save!
charly.save!
clara.save!
david.save!
gaby.save!
ilan.save!
joe.save!
max.save!
maya.save!
mel.save!
rabea.save!
romy.save!
valentina.save!

puts "Finished generating users"

puts "Generating challenges"

chicken = Challenge.new(name: "Chicken dance",
                        remote_photo_url: "https://media.giphy.com/media/3o752olKiKtMfQunzW/giphy.gif")

pushups = Challenge.new(name: "Pushups",
                        remote_photo_url: "https://media.giphy.com/media/PfFtibPKBbQrK/giphy.gif")

get_number = Challenge.new(name: "Get phone numbers",
                           remote_photo_url: "https://media.giphy.com/media/11SIBu3s72Co8w/giphy.gif")

macarena = Challenge.new(name: "The Macarena",
                     remote_photo_url: "https://media.giphy.com/media/u6jNILpQWrF9C/giphy.gif")

no_phone = Challenge.new(name: "No phone",
                         remote_photo_url: "https://media.giphy.com/media/2yrq3JzXZWCa7x8Yrg/giphy.gif")

chicken.save!
pushups.save!
get_number.save!
macarena.save!
no_phone.save!

puts "Finished generating challenges"

puts "Generating Levels"

Level.create!(time: 10,
              description: "Do the Dance for 10 steps",
              challenge_id: chicken.id)

Level.create!(time: 20,
              description: "Add sound to the dance",
              challenge_id: chicken.id)

Level.create!(time: 30,
              description: "Do it for 10 more steps",
              challenge_id: chicken.id)

# -------------------------

Level.create!(time: 10,
              description: "Do 10 pushups",
              challenge_id: pushups.id)

Level.create!(time: 20,
              description: "Do 25 pushups",
              challenge_id: pushups.id)

Level.create!(time: 30,
              description: "Each pushup should have a clap",
              challenge_id: pushups.id)

# -------------------------

Level.create!(time: 10,
              description: "Get 1 phone number",
              challenge_id: get_number.id)

Level.create!(time: 20,
              description: "Get 3 phone numbers",
              challenge_id: get_number.id)

Level.create!(time: 30,
              description: "Get 5 phone numbers",
              challenge_id: get_number.id)

# -------------------------

Level.create!(time: 10,
              description: "Dance the macarena for 1 minutes",
              challenge_id: macarena.id)

Level.create!(time: 20,
              description: "Dance the macarena for 3 minutes",
              challenge_id: macarena.id)

Level.create!(time: 30,
              description: "Dance the macarena while signing it",
              challenge_id: macarena.id)

# -------------------------

Level.create!(time: 10,
              description: "Don't use the phone for 30 min",
              challenge_id: no_phone.id)

Level.create!(time: 20,
              description: "Don't use the phone for 1 hout",
              challenge_id: no_phone.id)

Level.create!(time: 30,
              description: "Don't use the phone at all",
              challenge_id: no_phone.id)

# -------------------------

puts "Finished generating Levels"

puts "Generating Groups"

app2wait = Group.new(name: 'app2wait',
                    remote_photo_url: 'https://images-eu.ssl-images-amazon.com/images/I/61n252YpctL.png',
                    user: rabea)

soccer = Group.new(name: 'soccer',
                  remote_photo_url: 'https://i.linio.com/p/9e447eff5bfbea39ea57d204879d0b3d-product.jpg',
                  user: cuervo)

france = Group.new(name: 'france',
                   remote_photo_url: 'https://upload.wikimedia.org/wikipedia/en/c/c3/Flag_of_France.svg',
                   user: max)

app2wait.save!
soccer.save!
france.save!

puts "Finished generating Groups"

puts "Generating Groups/Users"

GroupsUser.create!(group_id: app2wait.id, user_id: cuervo.id)
GroupsUser.create!(group_id: app2wait.id, user_id: ilan.id)
GroupsUser.create!(group_id: app2wait.id, user_id: ben.id)

GroupsUser.create!(group_id: soccer.id, user_id: cuervo.id)
GroupsUser.create!(group_id: soccer.id, user_id: ilan.id)
GroupsUser.create!(group_id: soccer.id, user_id: ben.id)
GroupsUser.create!(group_id: soccer.id, user_id: max.id)
GroupsUser.create!(group_id: soccer.id, user_id: joe.id)

GroupsUser.create!(group_id: france.id, user_id: ilan.id)
GroupsUser.create!(group_id: france.id, user_id: david.id)

puts "Finished generating Groups/Users"

puts "Generating Videos"

Video.create!(remote_video_url: 'http://res.cloudinary.com/dn4gmiobc/video/upload/v1561995733/reiuxlntg6uhynogclz8.mp4',
              challenge_id: chicken.id,
              user_id: cuervo.id,
              tag: "test video")

# Cloudinary::Uploader.upload("Test_video.mp4", :resource_type => :video)

puts "Finished generating videos"

puts "Done seeding!"
