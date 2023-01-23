-- 8) Selecting display name, number of comments, average post score and average view count of the top 10 users with the most comments on their posts
SELECT u.DisplayName,
       COUNT(c.Id) AS num_comments,
       AVG(p.Score) AS avg_score,
       AVG(p.ViewCount) AS avg_views
FROM users u, posts p, comments c
WHERE u.id = p.OwnerUserId
AND p.Id = c.PostId
AND p.viewcount IS NOT NULL
GROUP BY u.DisplayName
ORDER BY num_comments DESC
LIMIT 10;
