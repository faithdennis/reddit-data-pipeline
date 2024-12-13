CREATE TABLE IF NOT EXISTS subreddits
(
    last_updated_utc            BIGINT,
    subreddit                   VARCHAR(255),
    subreddit_id                VARCHAR(255),
    subreddit_name_prefixed     VARCHAR(255),
    subreddit_type              VARCHAR(255)
);