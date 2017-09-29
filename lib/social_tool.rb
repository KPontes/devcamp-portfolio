module SocialTool
  def self.twitter_search _search
    client = Twitter::REST::Client.new do |config|
      config.consumer_key        = ENV.fetch("TWITTER_CONSUMER_KEY")
      config.consumer_secret     = ENV.fetch("TWITTER_CONSUMER_SECRET")
      config.access_token        = ENV.fetch("TWITTER_ACCESS_TOKEN")
      config.access_token_secret = ENV.fetch("TWITTER_ACCESS_SECRET")
    end
    
    if _search == nil then
      _search = "#project manager"
    else 
      _search = "#"+_search
    end
    
    client.search(_search, result_type: 'recent').take(12).collect do |tweet|
      "#{tweet.user.screen_name}: #{tweet.text}"
    end
  end
end