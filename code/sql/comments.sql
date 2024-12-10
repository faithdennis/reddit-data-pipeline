CREATE TABLE IF NOT EXISTS comments
(
    id                          VARCHAR(255) NOT NULL,
    archived                    BOOLEAN,
    author                      VARCHAR(255),
    author_created_utc          BIGINT,
    body                        TEXT,
    created_utc                 BIGINT,
    downs                       INT,
    edited                      BOOLEAN,
    locked                      BOOLEAN,
    parent_id                   VARCHAR(255),
    permalink                   VARCHAR(255),
    retrieved_on                BIGINT,
    score                       INT,
    subreddit                   VARCHAR(255),
    subreddit_id                VARCHAR(255),
    subreddit_name_prefixed     VARCHAR(255),
    subreddit_type              VARCHAR(255),
    updated_on                  BIGINT,
    ups                         INT
);