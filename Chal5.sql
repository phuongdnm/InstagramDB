-- Calculate photo per user
SELECT
    (SELECT COUNT(*) FROM photos)/ (SELECT COUNT(*) FROM users) AS avg;
