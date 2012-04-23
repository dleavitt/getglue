# -*- encoding: utf-8 -*-
require File.expand_path('../lib/getglue/version', __FILE__)

Gem::Specification.new do |gem|
  gem.authors       = ["Daniel Leavitt"]
  gem.email         = ["daniel.leavitt@gmail.com"]
  gem.description   = %q{Simple HTTParty-based wrapper for GetGlue API}
  gem.summary       = %q{Simple HTTParty-based wrapper for GetGlue API}
  gem.homepage      = "https://github.com/dleavitt/getglue"

  gem.files         = `git ls-files`.split($\)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.name          = "getglue"
  gem.require_paths = ["lib"]
  gem.version       = GetGlue::VERSION
  
  gem.executables = `git ls-files -- bin/*`.split("\n").map{|f| File.basename(f)}
  gem.files       = `git ls-files`.split("\n")
  gem.test_files  = `git ls-files -- {test,spec,features}/*`.split("\n")
  
  gem.add_dependency "httparty"
  gem.add_dependency "oauth"
  gem.add_development_dependency "rspec", ">= 2.0"
  gem.add_development_dependency "pry"
end
