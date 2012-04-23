require 'httparty'
require 'oauth'
require 'getglue/httparty_ext'
require "getglue/version"
require "getglue/client"

module GetGlue
  class << self
    extend Forwardable
    def_delegators :'GetGlue::Client', :consumer_key, :consumer_secret, :consumer_key=, :consumer_secret=
  end
end
