require 'rails_helper'

RSpec.describe "Collections", type: :request do
  let(:user) { User.create!(name: "Lisa", email: "lisa@email.com", password: "cats") }
  let(:collection) { Collection.create!(name: "My CDs", user: user) }

  describe "GET /collections" do
    it "returns a successful response" do
      get collections_path
      expect(response).to have_http_status(:ok)
      expect(response.body).to include("My Collections")
    end
  end

  describe "GET /collections/:id" do
    it "shows the collection details" do
      get collection_path(collection)
      expect(response).to have_http_status(:ok)
      expect(response.body).to include(collection.name)
    end
  end
end
