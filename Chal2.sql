-- What day of the week do most users register on?
SELECT
    DAYNAME(created_at) AS day_name,
    COUNT(DAYNAME(created_at)) AS day_count
FROM users
GROUP BY day_name
ORDER BY day_count DESC LIMIT 2;