$:.push File.expand_path("../lib", __FILE__)
require "getglue"

Dir[File.expand_path(File.join(File.dirname(__FILE__),'support','**','*.rb'))].each {|f| require f}
