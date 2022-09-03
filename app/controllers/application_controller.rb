class ApplicationController < Sinatra::Base
    set :default_content_type, 'application/json'

    get '/reviews' do
        review = Review.all
        review.to_json
      end

      post '/reviews' do
        review = Review.create(
          body: params[:body],
          restaurant_id: params[:restaurant_id],
          user_id: params[:user_id]
        )
        review.to_json
      end
end