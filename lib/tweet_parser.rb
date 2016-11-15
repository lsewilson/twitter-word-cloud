require 'CSV'

class TweetParser

  def initialize(tweets)
    @tweets = tweets.join(' ')
  end

  def get_cloud_array
    map_to_cloud_array(word_count_hash)
  end

  private

  def remove_non_cloud_words
    @tweets.gsub!(/((?:f|ht)tps?:\/[^\s]+|@(\w+))|[0-9]/, '')
  end

  def split_tweets
    remove_non_cloud_words.split(/\W+/)
  end

  def remove_stop_words
    stop_words = CSV.read("./lib/assets/stop-word-list.csv").flatten
    split_tweets.reject{|w| stop_words.include? w.downcase }
  end

  def word_count_hash
    remove_stop_words.inject(Hash.new(0)) { |h,v| h[v] += 1 ; h}
  end

  def map_to_cloud_array(hash)
    array = []
    hash.each do |k,v|
      array << { text: k , weight: v}
    end
    array
  end

end
