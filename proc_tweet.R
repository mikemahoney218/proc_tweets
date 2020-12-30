proc_tweet_token <- rtweet::create_token(
  app = "proc_tweets",
  consumer_key =    Sys.getenv("TWITTER_CONSUMER_API_KEY"),
  consumer_secret = Sys.getenv("TWITTER_CONSUMER_API_SECRET"),
  access_token =    Sys.getenv("TWITTER_ACCESS_TOKEN"),
  access_secret =   Sys.getenv("TWITTER_ACCESS_TOKEN_SECRET")
)

rtweet::post_tweet(
  status = proceduralnames::make_english_names(1),
  token = proc_tweet_token
)

