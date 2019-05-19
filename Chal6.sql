-- What are the top 5 most commonly used hashtags?
SELECT
    tag_name,
    COUNT(photo_id) as total
FROM tags
INNER JOIN photo_tags
    ON tags.id = photo_tags.tag_id
GROUP BY tag_id 
ORDER BY total DESC LIMIT 5;