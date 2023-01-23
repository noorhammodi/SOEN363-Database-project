-- 9) Selecting the top 5 most upvoted posts and least upvoted posts by a user based on the user badge status,

(SELECT b."name",  COUNT(u.upvotes) AS upv
FROM badges b, users u
WHERE b.id=u.id
GROUP BY b."name",u.upvotes
ORDER BY upv DESC 
LIMIT 5)
Union ALL
(SELECT b."name",  COUNT(u.upvotes) AS upv
FROM badges b, users u
WHERE b.id=u.id
GROUP BY b."name",u.upvotes
ORDER BY upv ASC 
LIMIT 5)
