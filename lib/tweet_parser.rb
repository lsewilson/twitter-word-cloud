class TweetParser

  def initialize(tweets)
    @tweets = tweets
  end

  def get_cloud_array
    map_to_cloud_array(word_count_hash)
  end

  private

  def split_tweets
    @tweets.join(" ").split(/\W+/)
  end

  def word_count_hash
    split_tweets.inject(Hash.new(0)) { |h,v| h[v] += 1; h }
  end

  def map_to_cloud_array(hash)
    array = []
    hash.each do |k,v|
      array << { text: k , weight: v}
    end
    return array
  end

end
