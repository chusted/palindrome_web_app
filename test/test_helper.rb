ENV['RACK_ENV'] = 'test'

require_relative '../app'
require 'rack/test'
require 'nokogiri'
require 'minitest/autorun'
require 'minitest/reporters'
Minitest::Reporters.use!

def test_index
    get '/'
    assert last_response.ok?
end

# Returns the document.
def doc(response)
    Nokogiri::HTML(response.body)
end