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
