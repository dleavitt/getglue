# taken from https://github.com/jnunemaker/httparty/pull/112/files
# by https://github.com/Kimtaro
module HTTParty
  class Request
    alias :setup_raw_request_old :setup_raw_request
    
    def setup_raw_request
      setup_raw_request_old
      set_oauth_auth if options[:oauth_auth]
    end
    
    def set_oauth_auth
      oauth_params = {:consumer => options[:oauth_auth].consumer,
                      :token => options[:oauth_auth],
                      :request_uri => uri}
      oauth_helper = OAuth::Client::Helper.new(@raw_request, oauth_params)
      @raw_request['Authorization'] = oauth_helper.header
    end
  end
end