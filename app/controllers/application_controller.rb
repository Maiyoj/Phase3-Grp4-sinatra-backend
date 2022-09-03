class ApplicationController < Sinatra::Base
    set :default_content_type, 'application/json'

    get '/reviews' do
        review = Review.all
        review.to_json
      end

      post '/reviews' do
        review = Review.create(
          resturant: params[:resturant],
          body: params[:body],
          username: params[:username]
        )
        review.to_json
      end
end