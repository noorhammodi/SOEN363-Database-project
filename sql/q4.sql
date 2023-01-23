-- 4) Showing the total number of new posts per year, followed by the number of new users per year
SELECT EXTRACT(YEAR FROM p.CreationDate) AS Year,
       COUNT(*) AS NumberOfNewPosts
FROM posts p
GROUP BY Year
ORDER BY Year ASC;
