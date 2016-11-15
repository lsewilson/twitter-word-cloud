# Twitter Cloud

This is a a simple Sinatra app which generates a word cloud from a twitter username. The app can be viewed online [here](https://twittercloud.herokuapp.com).

### Dependencies

Twitter Cloud uses the [jQCloud](https://github.com/lucaong/jQCloud) library to generate a word cloud.

### Installation instructions

#### Prerequisites:
- Ruby
- Git
- Bundler

#### Set Up

Clone the repo:
```
$ git clone git@github.com:lsewilson/twitter-word-cloud.git
```
Install gem dependencies:
```
$ cd twitter-word-cloud
$ bundle
```
Copy example environment variables file to a new .env file and replace Twitter API keys with your own:
```
$ cp .env.example .env
```

### Running tests

This app has been tested using RSpec and Capybara.

```
$ rspec
```

### Run the app

Using Rack:

```
$ rackup
Go to localhost:9292 in your browser.
```

Using Shotgun:
```
$ shotgun
Go to localhost:9393 in your browser.
```
