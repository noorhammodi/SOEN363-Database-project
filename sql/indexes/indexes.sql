CREATE INDEX idx_posts_title ON posts (title);
CREATE INDEX idx_comments_post_id ON comments (PostId);
CREATE INDEX idx_badges_user_id ON badges (UserId);
CREATE INDEX idx_posthistory_user_id ON posthistory (userId);
CREATE INDEX idx_users_display_name ON users (displayname);
CREATE INDEX idx_users_upvotes ON users (UpVotes);
CREATE INDEX idx_users_downvotes ON users (DownVotes);
CREATE INDEX idx_users_reputation ON users (Reputation);
