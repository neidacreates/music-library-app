require 'rails_helper'

RSpec.describe Album, type: :model do
  let(:artist) { Artist.create!(name: "Radiohead") }
  let(:genre) { Genre.create!(name: "Alternative") }

  describe "validations" do
    it "is valid with valid attributes" do
      album = Album.new(
        title: "OK Computer",
        release_year: 1997,
        format: "CD",
        condition: "Good",
        artist: artist,
        genre: genre
      )

      expect(album).to be_valid
    end

    it "is invalid without a title" do
      album = Album.new(
        release_year: 1997,
        format: "CD",
        condition: "Good",
        artist: artist,
        genre: genre
      )

      expect(album).not_to be_valid
      expect(album.errors[:title]).to include("can't be blank")
    end

    it "is invalid without an artist" do
      album = Album.new(
        title: "Kid A",
        release_year: 2000,
        format: "Vinyl",
        condition: "Mint",
        genre: genre
      )

      expect(album).not_to be_valid
      expect(album.errors[:artist]).to include("must exist")
    end

    it "is invalid without a genre" do
      album = Album.new(
        title: "In Rainbows",
        release_year: 2007,
        format: "Digital",
        condition: "Excellent",
        artist: artist
      )

      expect(album).not_to be_valid
      expect(album.errors[:genre]).to include("must exist")
    end
  end
end
