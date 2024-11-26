import json
import pandas as pd
from sqlalchemy import create_engine

relevant_comment_columns = [
    'author',
    'author_created_utc',
    'body',
    'created_utc',
    'id',
    'locked',
    'parent_id',
    'permalink',
    'retrieved_on',
    'score',
    'subreddit',
    'subreddit_id',
    'subreddit_name_prefixed',
    'subreddit_type',
    'archived',
    'downs',
    'updated_on',
    'ups'
]

DATABASE_URL = "postgresql+psycopg2://user:youshallnotpass@192.168.1.253:6543/reddit"


if __name__ == '__main__':

    comments_data_path = '../data/extracted_data/comments_data.ndjson'
    engine = create_engine(DATABASE_URL)

    with open(comments_data_path, 'r') as f:
        done = False
        iter = 1
        while not done:
            jsons = []
            # 1000 lines at a time
            for i in range(1000):
                line = f.readline().strip()             
                # end of file is reached
                if not line:
                    done = True
                    break

                json_line = json.loads(line)
                jsons.append(json_line)

            if done: break
        
            df = pd.DataFrame(jsons)
            # only keep relevant columns
            for col in relevant_comment_columns:
                if col not in df.columns:
                    df[col] = pd.NA  # Add missing columns with NaN
            
            df = df[relevant_comment_columns]
            df.to_sql('comments', engine, if_exists='append', index=False)

            print(f"Iteration #{iter}: Data written to database successfully!")
            iter += 1
