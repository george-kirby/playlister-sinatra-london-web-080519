class GenresController < ApplicationController

    get '/genres' do
        erb :"genres/genres"
    end

    get '/genres/:slug' do
        @genre = Genre.find_by_slug(params[:slug])
        erb :"genres/show_genre"
    end

end
