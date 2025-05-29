require 'rails_helper'

RSpec.describe "Wishlists", type: :request do
  let(:user) { User.create!(name: "Lisa", email: "lisa@email.com", password: "cats") }
  let(:wishlist) { Wishlist.create!(name: "Vinyl To Buy", user: user) }

  describe "GET /wishlists" do
    it "returns the wishlist index" do
      get wishlists_path
      expect(response).to have_http_status(:ok)
      expect(response.body).to include("Wishlists")
    end
  end

  describe "GET /wishlists/:id" do
    it "shows the wishlist details" do
      get wishlist_path(wishlist)
      expect(response).to have_http_status(:ok)
      expect(response.body).to include(wishlist.name)
    end
  end
end
