require_relative '../app/lib/tweet_parser'

describe TweetParser do

  subject(:parser) { described_class.new(tweets) }
  let(:tweets) { double :tweets, join: "Lorem, #Lorem 'ipsum'. / £ $ @ipsum http://bit.ly almost" }

  describe '#get_cloud_array' do
    it 'returns only the count of different words in a list of tweets' do
      array = [{text: "Lorem", weight: 2}, {text: "ipsum", weight: 1}]
      expect(parser.get_cloud_array).to eq array
    end
  end
end
