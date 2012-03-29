require 'httparty'
require 'oauth'
require 'getglue/httparty_ext'
require "getglue/version"

class GetGlue
  include HTTParty
  base_uri 'https://api.getglue.com/v2'
  default_params :format => 'json'
  format :json
  
  class << self
    attr_accessor :consumer_key, :consumer_secret
  end
  
  def initialize(oauth_token, oauth_secret)      
    consumer = OAuth::Consumer.new(self.class.consumer_key, self.class.consumer_secret)
    @access_token = OAuth::AccessToken.new(consumer, oauth_token, oauth_secret)
  end
  
  def get(path, query = {})
    self.class.get(path, { :query => query, :oauth_auth => @access_token })
  end
end
