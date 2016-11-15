require 'sinatra/base'
require 'twitter'
require 'dotenv'
require 'json'
require_relative 'lib/tweet_parser'

Dotenv.load

ENV["RACK_ENV"] ||= "development"

class App < Sinatra::Base

  @@twitter = Twitter::REST::Client.new(
  consumer_key: ENV['TWITTER_KEY'],
  consumer_secret: ENV['TWITTER_SECRET'],
  oauth_token: ENV['TWITTER_ACCESS_TOKEN'],
  oauth_token_secret: ENV['TWITTER_SECRET_TOKEN']
  )

  get '/' do
    erb :index
  end

  get '/cloud' do
    options = {count: 200, include_rts: false}
    tweets = @@twitter.user_timeline(params[:username],options).map(&:text)
    parser = TweetParser.new(tweets)
    content_type :json
    parser.get_cloud_array.to_json
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
