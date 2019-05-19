-- Find users who have liked every single photo on the site
SELECT
    username,
    COUNT(*) AS total_like
FROM users
INNER JOIN likes
    ON users.id = likes.user_id
GROUP BY likes.user_id
HAVING total_like = (SELECT COUNT(*) FROM photos);



