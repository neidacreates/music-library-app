class WishlistsController < ApplicationController
    def index
        @wishlists = Wishlist.all
    end

    def show
        @wishlist = Wishlist.find(params[:id])
        @albums = @wishlist.albums
    end
end
