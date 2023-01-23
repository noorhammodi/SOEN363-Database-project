-- 6) Selecting top 10 users with the most badges
SELECT u.DisplayName, COUNT(b.Id) AS num_badges
FROM users u, badges b
WHERE u.id = b.userid
GROUP BY u.DisplayName
ORDER BY num_badges DESC
