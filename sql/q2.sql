-- 2) Showing top 10 posts with the most comments (based on the 'PostId' column in the 'comments' table)
SELECT p.Title, COUNT(*) as TotalComments
FROM posts p, comments c
WHERE c.PostId = p.id
GROUP BY p.title
ORDER BY TotalComments DESC
LIMIT 10;
