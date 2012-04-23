# GetGlue

Minimal GetGlue API client. Built on [HTTParty](https://github.com/jnunemaker/httparty).

Support OAuth and V2 API.

## Installation

Add this line to your application's Gemfile:

    gem 'getglue', :git => 'git@github.com:dleavitt/politifact.git'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install getglue

## Usage

Set consumer key and secret.
These can be obtained by emailing api@getglue.com.
		
		GetGlue.consumer_key = '<your-key>'
		GetGlue.consumer_secret = '<your-secret>'

Pass oauth token and secret to constructor. Get these through [omniauth-getglue](https://github.com/JCBarry/omniauth-getglue) or similar.
		
		GetGlue.new('oauth-token', 'oauth-secret')
		profile = GetGlue.get('/user/profile')

See the GetGlue API docs for a list of available calls.
http://getglue.com/api

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Added some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
