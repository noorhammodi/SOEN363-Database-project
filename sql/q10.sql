-- 10) Selecting the top 10 most viewed tagnames containing the word “data” in their tag name, followed by the top 10 most viewed tagnames.

(SELECT t.tagname, p.viewcount
FROM tags t, posts p 
WHERE t.id=p.id and t.tagname LIKE '%data%'
AND p.viewcount IS NOT NULL
GROUP BY t.tagname,p.viewcount
ORDER BY p.viewcount DESC 
LIMIT 10)
UNION ALL
(SELECT t.tagname, p.viewcount
FROM tags t, posts p 
WHERE t.id=p.id
AND p.viewcount IS NOT NULL
GROUP BY t.tagname,p.viewcount
ORDER BY p.viewcount DESC 
LIMIT 10)
