# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

# Clear existing data
CollectionAlbum.destroy_all
Collection.destroy_all
Album.destroy_all
Artist.destroy_all
Genre.destroy_all
User.destroy_all

# Users
user = User.create!(name: "Lisa", email: "lisa@email.com", password: "cats")

# Artists
radiohead = Artist.create!(name: "Radiohead")
fleetwood = Artist.create!(name: "Fleetwood Mac")

# Genres
alt = Genre.create!(name: "Alternative")
rock = Genre.create!(name: "Rock")

# Albums
ok_computer = Album.create!(
    title: "OK Computer",
    release_year: 1997,
    format: "CD",
    condition: "Good",
    artist: radiohead,
    genre: alt
)

rumours = Album.create!(
    title: "Rumours",
    release_year: 1977,
    format: "Vinyl",
    condition: "Excellent",
    artist: fleetwood,
    genre: rock
)

# Collections
vinyl_favorites = Collection.create!(name: "Vinyl Favorites", user: user)
cd_collection = Collection.create!(name: "CD Collection", user: user)

# Add albums to collections
vinyl_favorites.albums << rumours
cd_collection.albums << ok_computer

