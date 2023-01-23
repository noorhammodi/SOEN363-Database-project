-- 1) Showing top 10 users with the most badges (based on the ‘UserId’ column in the ‘badges’ table)
SELECT u.DisplayName, COUNT(*) as TotalBadges
FROM users u, badges b
WHERE b.UserId = u.Id
GROUP BY u.DisplayName
ORDER BY TotalBadges DESC
LIMIT 10;
