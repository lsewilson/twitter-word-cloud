# Twitter Cloud

This is a simple Sinatra app which generates a **word cloud** from a **Twitter** username. The app can be viewed online [here](https://twittercloud.herokuapp.com).

### Dependencies

 * Ruby 2.3.1
 * Git
 * Bundler gem
 * [Twitter gem](https://github.com/sferik/twitter)
 * Sinatra framework
 * [jQCloud](https://github.com/lucaong/jQCloud) to generate the word cloud
 * [Skeleton](http://getskeleton.com/) CSS framework

### Features
 * Asks user for twitter handle
 * Makes request to Twitter API for 200 tweets
 * Calculates frequency of each word
 * Displays a word cloud generated from tweets by the given Twitter user
 * Stop words removed from word cloud
 * Works in a mobile browser
 * Accessible on the open internet

### Installation instructions

#### Prerequisites:
- Ruby
- Git
- Bundler gem

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
Copy example environment variables file to a new .env file:
```
$ cd app
$ cp .env.example .env
```
Open your new .env file and replace all the \*** placeholders with your own Twitter API keys.

### Running tests

This app has been tested using RSpec, Capybara.

```
$ rspec
```

### Running the app

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

Fill in the form with a public Twitter handle and click submit to generate a word cloud.

![Screenshot](http://i.imgur.com/PtAvUUll.png)
