-- 3) Showing top 10 users who have made the most edits to posts (based on the 'UserId' column in the 'postHistory' table)
SELECT u.DisplayName, COUNT(*) as TotalEdits
FROM users u, postHistory p
WHERE p.userId = u.Id
GROUP BY u.displayname
ORDER BY TotalEdits DESC
LIMIT 10;
