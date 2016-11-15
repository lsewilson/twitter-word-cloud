require_relative 'spec_helper'
require_relative '../app/app'
require 'rack/test'
require 'test/unit'

class AppTest < Test::Unit::TestCase
  include Rack::Test::Methods

  def app
    App.new
  end

  def test_it_has_an_index_page
    get '/'
    assert last_response.ok?
  end

  def test_it_gets_a_text_response_from_cloud_path
    get '/cloud?username=wilslau'
    assert last_response.body.include? 'text'
  end

  def test_it_gets_a_weight_response_from_cloud_path
    get '/cloud?username=twitter'
    assert last_response.body.include? 'weight'
  end

end
