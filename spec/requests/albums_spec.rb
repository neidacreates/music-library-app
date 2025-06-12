require 'rails_helper'

RSpec.describe "Albums", type: :request do
  let(:artist) { Artist.create!(name: "Radiohead") }
  let(:genre) { Genre.create!(name: "Alt Rock") }
  let(:album) do
    Album.create!(
      title: "OK Computer",
      release_year: 1997,
      format: "CD",
      condition: "Good",
      artist: artist,
      genre: genre
    )
  end

  describe "GET /albums/:id" do
    it "displays album details" do
      get album_path(album)
      expect(response).to have_http_status(:ok)
      expect(response.body).to include("OK Computer")
      expect(response.body).to include("Radiohead")
    end
  end
end
