# Twitter Cloud

This is a Sinatra web app which generates a **word cloud** from a **Twitter** username. The app can be viewed online [here](https://twittercloud.herokuapp.com).

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

This app has been tested using Rack-Test, RSpec, Capybara.

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

### My Approach

#### Initial planning:

After researching various word cloud libraries and gems, I decided to use jQCloud. As a result, this meant that I would need an API which returned a JSON object that jQCloud could interpret and use to render a word cloud.

For the back-end I chose to use Sinatra because of its lightweightness compared with Rails.

#### Building the app:

Once I had a basic index page with a form for a Twitter handle set up, I started working on building in the Twitter API. My first goal was to make sure I could render the tweets of an inputted user on the page. When I was certain the API was working correctly, I started building a TweetParser class which would read the collection of tweets it was passed and return my word cloud JSON object.

With the basic app working, I deployed it to Heroku so that it was accessible on the open internet. This helped me notice bugs in the app, such as in the AJAX requests which were originally directed at the localhost.

My next task was removing stop words and ensuring that any hyperlinks or Twitter user tags were not included in the word cloud so I adapted my TweetParser class.

This was all I managed to do in a day, and there are still features I would like to have added.

#### To do:

* Replace jQCloud with custom built word cloud library.
* Make the site more mobile-responsive.
* Jazz up the styling.
