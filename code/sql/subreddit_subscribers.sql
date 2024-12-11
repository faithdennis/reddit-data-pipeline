CREATE TABLE IF NOT EXISTS subreddit_subscribers
(
   retrieved_utc    BIGINT,
   subreddit        VARCHAR(255),
   subreddit_id     VARCHAR(255),
   num_subscribers  INT
);