puts 'Destroying old database...'
User.destroy_all
Group.destroy_all
Challenge.destroy_all
# GroupUser.destroy_all

puts "Generating Users"

User.create!(email: 'axel@app2wait.com',
            password: '123456',
            username: 'Cuervo',
            remote_photo_url: 'https://res.cloudinary.com/dn4gmiobc/image/upload/v1561971341/dkimxfxzsauhsl7ijsvh.png',
            average_lateness: rand(0..25))

User.create!(email: 'marko@app2wait.com',
            password: '123456',
            username: 'Marko',
            remote_photo_url: 'http://res.cloudinary.com/dn4gmiobc/image/upload/v1561978082/gxn0tymnoggmdbhayhfn.png',
            average_lateness: rand(0..25))

User.create!(email: 'ben@app2wait.com',
            password: '123456',
            username: 'Ben',
            remote_photo_url: 'http://res.cloudinary.com/dn4gmiobc/image/upload/v1561978084/f0ts7c7y3p6xmngnckxo.png',
            average_lateness: rand(0..25))

User.create!(email: 'benya@app2wait.com',
            password: '123456',
            username: 'benya',
            remote_photo_url: 'http://res.cloudinary.com/dn4gmiobc/image/upload/v1561978086/lrvevguguuho8951i7kf.png',
            average_lateness: rand(0..25))

User.create!(email: 'charly@app2wait.com',
            password: '123456',
            username: 'charly',
            remote_photo_url: 'http://res.cloudinary.com/dn4gmiobc/image/upload/v1561978087/uugd4jho6kjam6yaa0qh.png',
            average_lateness: rand(0..25))

User.create!(email: 'clara@app2wait.com',
            password: '123456',
            username: 'clara',
            remote_photo_url: 'http://res.cloudinary.com/dn4gmiobc/image/upload/v1561978088/jqnkwefbacd9nfsw5k8w.jpg',
            average_lateness: rand(0..25))

User.create!(email: 'david@app2wait.com',
            password: '123456',
            username: 'david',
            remote_photo_url: 'http://res.cloudinary.com/dn4gmiobc/image/upload/v1561978090/evphzyzlqtjo4fux6ala.png',
            average_lateness: rand(0..25))

User.create!(email: 'gaby@app2wait.com',
            password: '123456',
            username: 'gaby',
            remote_photo_url: 'http://res.cloudinary.com/dn4gmiobc/image/upload/v1561978091/bvc2vczpy6isnjaeudox.png',
            average_lateness: rand(0..25))

User.create!(email: 'ilan@app2wait.com',
            password: '123456',
            username: 'ilan',
            remote_photo_url: 'http://res.cloudinary.com/dn4gmiobc/image/upload/v1561978092/nfsqulkptkrpbljaujdi.png',
            average_lateness: rand(0..25))

User.create!(email: 'joe@app2wait.com',
            password: '123456',
            username: 'joe',
            remote_photo_url: 'http://res.cloudinary.com/dn4gmiobc/image/upload/v1561978361/tjjoec9fy9yhh2qt2yup.png',
            average_lateness: rand(0..25))

User.create!(email: 'max@app2wait.com',
            password: '123456',
            username: 'max',
            remote_photo_url: 'http://res.cloudinary.com/dn4gmiobc/image/upload/v1561978093/sfgut6oafmvrdbd6ev7j.png',
            average_lateness: rand(0..25))

User.create!(email: 'maya@app2wait.com',
            password: '123456',
            username: 'maya',
            remote_photo_url: 'http://res.cloudinary.com/dn4gmiobc/image/upload/v1561978094/e3mhhepfpnimwhz0yfma.png',
            average_lateness: rand(0..25))

User.create!(email: 'mel@app2wait.com',
            password: '123456',
            username: 'mel',
            remote_photo_url: 'http://res.cloudinary.com/dn4gmiobc/image/upload/v1561978096/nqwbbknexnqsf8twpusq.png',
            average_lateness: rand(0..25))

User.create!(email: 'rabea@app2wait.com',
            password: '123456',
            username: 'rabea',
            remote_photo_url: 'http://res.cloudinary.com/dn4gmiobc/image/upload/v1561978097/g45lunatp16ywfmrxnit.jpg',
            average_lateness: rand(0..25))

User.create!(email: 'romy@app2wait.com',
            password: '123456',
            username: 'romy',
            remote_photo_url: 'http://res.cloudinary.com/dn4gmiobc/image/upload/v1561978098/t49zxpy7ueb7jajf0t5d.png',
            average_lateness: rand(0..25))

User.create!(email: 'valentina@app2wait.com',
            password: '123456',
            username: 'valentina',
            remote_photo_url: 'http://res.cloudinary.com/dn4gmiobc/image/upload/v1561978364/o6z6zzjtrt3sxdfduzra.png',
            average_lateness: rand(0..25))


puts "Finished generating users"

puts "Generating challenges"

Challenge.create!(name: "chicken dance",
                 remote_photo_url: "https://media.giphy.com/media/3o752olKiKtMfQunzW/giphy.gif")

Challenge.create!(name: "Pushups",
                 remote_photo_url: "https://media.giphy.com/media/PfFtibPKBbQrK/giphy.gif")

Challenge.create!(name: "Get phone numbers",
                 remote_photo_url: "https://media.giphy.com/media/11SIBu3s72Co8w/giphy.gif")

Challenge.create!(name: "The worm",
                 remote_photo_url: "https://media.giphy.com/media/YiJn0dXMKDkhHNXDLC/giphy.gif")

Challenge.create!(name: "No phone",
                 remote_photo_url: "https://media.giphy.com/media/2yrq3JzXZWCa7x8Yrg/giphy.gif")

puts "Finished generating challenges"

puts "Generating Groups"

Group.create(name: "ilan")

Group.create(name: "axel")

Group.create(name: "snoopy")

Group.create(name: "scooby-doo")

Group.create(name: "asterix")

Group.create(name: "obelix")

puts "Finished generating Groups"

puts "Done seeding!"
