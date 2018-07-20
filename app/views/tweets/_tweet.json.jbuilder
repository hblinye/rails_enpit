json.extract! tweet, :id, :name, :tweet, :created_at, :updated_at
json.url tweet_url(tweet, format: :json)
