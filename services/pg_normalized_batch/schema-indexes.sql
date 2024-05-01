CREATE INDEX CONCURRENTLY ON tweet_tags(tag, id_tweets);
CREATE INDEX CONCURRENTLY ON tweet_tags(id_tweets, tag);
CREATE INDEX CONCURRENTLY ON tweets(id_tweets, lang);
CREATE INDEX CONCURRENTLY ON tweets using gin(to_tsvector('english',text));
CREATE INDEX CONCURRENTLY ON tweets(lang);
