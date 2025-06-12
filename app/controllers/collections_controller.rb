class CollectionsController < ApplicationController
    def index
        @collections = Collection.all # later: current_user.collections
    end

    def show
        @collection = Collection.find(params[:id])
        @albums = @collection.albums
    end
end
