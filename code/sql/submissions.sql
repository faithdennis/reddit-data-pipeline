CREATE TABLE IF NOT EXISTS submissions
(
    id                    VARCHAR(255) NOT NULL,
    downs                 INTEGER,
    ups                   INTEGER,
    archived              BOOLEAN,
    author                TEXT,
    author_created_utc    INTEGER,
    subreddit             TEXT,
    subreddit_id          TEXT,
    subreddit_subscribers INTEGER,
    subreddit_type        TEXT,
    title                 TEXT,
    url                   TEXT,
    num_comments          INTEGER,
    permalink             TEXT,
    is_self               BOOLEAN,
    selftext              TEXT,
    created_utc           INTEGER,
    spoiler               BOOLEAN,
    locked                BOOLEAN
)