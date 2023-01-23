-- 7) Selecting Title, ViewCount and Score of top 10 lowest and highest scored posts with a significant viewcount 
(SELECT p.Title, p.ViewCount, p.Score
 FROM posts p
 WHERE p.ViewCount IS NOT NULL
 AND p.ViewCount > 10000
 ORDER BY p.Score ASC
 LIMIT 10)
UNION ALL
(SELECT p.Title, p.ViewCount, p.Score
 FROM posts p
 WHERE p.ViewCount IS NOT NULL
 ORDER BY p.Score DESC
 LIMIT 10);
