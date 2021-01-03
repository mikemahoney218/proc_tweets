proc_tweet_token <- rtweet::create_token(
  app = "proc_tweets",
  consumer_key =    Sys.getenv("TWITTER_CONSUMER_API_KEY"),
  consumer_secret = Sys.getenv("TWITTER_CONSUMER_API_SECRET"),
  access_token =    Sys.getenv("TWITTER_ACCESS_TOKEN"),
  access_secret =   Sys.getenv("TWITTER_ACCESS_TOKEN_SECRET")
)

gemm::gemm_curves(exponent_max_x = 2, xfun = switch(sample(1:2, 1), sin, cos), save_args = "tmp.png")

rtweet::post_tweet(
  status = proceduralnames::make_english_names(1, n_words = sample(2:5, 1)),
  token = proc_tweet_token,
  media = "tmp.png"
)

