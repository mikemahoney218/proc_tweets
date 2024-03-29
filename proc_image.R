proc_tweet_token <- rtweet::create_token(
  app = "proc_tweets",
  consumer_key =    Sys.getenv("TWITTER_CONSUMER_API_KEY"),
  consumer_secret = Sys.getenv("TWITTER_CONSUMER_API_SECRET"),
  access_token =    Sys.getenv("TWITTER_ACCESS_TOKEN"),
  access_secret =   Sys.getenv("TWITTER_ACCESS_TOKEN_SECRET")
)

img_post <- gemm::gemm_unsplash_image_lines(Sys.getenv("UNSPLASH_TOKEN"), "tmp.png")

rtweet::post_tweet(
  status = paste(proceduralnames::make_english_names(1, n_words = sample(2:5, 1)),
                 " ",
                 "\n",
                 img_post$image_credit,
                 sep = "\n"),
  token = proc_tweet_token,
  media = "tmp.png",
  media_alt_text = "An image created by a number of horizontal lines, which have more up-and-down wiggles for darker areas of the image."
)

