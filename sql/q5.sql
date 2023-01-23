-- 5) Showing the 10 lowest reputable users followed by the 10 highest reputable users along with their account creation dates
(SELECT u1.DisplayName, u1.Reputation, u1.UpVotes, u1.DownVotes
FROM users u1
WHERE u1.UpVotes > 10
 AND u1.DownVotes > 10
ORDER BY u1.Reputation ASC
LIMIT 10)
UNION ALL
(SELECT u2.DisplayName, u2.Reputation, u2.UpVotes, u2.DownVotes
FROM users u2
ORDER BY u2.Reputation DESC
LIMIT 10);
