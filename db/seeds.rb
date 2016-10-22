Song.delete_all
Artist.delete_all


#--- Create artists ---
artist1 = Artist.create(name: "The Opposites")
artist2 = Artist.create(name: "Santana")
artist3 = Artist.create(name: "Matellica")
artist4 = Artist.create(name: "Robin Schulz")

#--- Create songs ---
song1 = Song.create( { title:"Belle Hélène", album:"Slapeloze Nachten", year:2013, artist: artist1 })
song2 = Song.create( { title:"Black Magic Woman", album:"Santana's Greatest hits", year:1974, artist: artist2 })
song3 = Song.create( { title:"Enter Sandman", album:"Matellica", year:1991, artist: artist3 })
song4 = Song.create( { title:"Yellow", album:"SUGAR", year:2015, artist: artist4 })

#--- Have images ---
photo1 = Photo.create({remote_image_url: "http://res.cloudinary.com/debyt5msz/image/upload/v1477140595/opposites_istbnn.jpg", artist: artist1 })
photo2 = Photo.create({remote_image_url: "http://res.cloudinary.com/debyt5msz/image/upload/v1477140611/santana_cmsxij.jpg", artist: artist2 })
photo3 = Photo.create({remote_image_url: "http://res.cloudinary.com/debyt5msz/image/upload/v1477140603/Metallica_-_Black_Album_voqwdt.jpg", artist: artist3 })
photo4 = Photo.create({remote_image_url: "http://res.cloudinary.com/debyt5msz/image/upload/v1477140617/robin_schulz_prayer.600x0_ju4pyb.jpg", artist: artist4 })
