-- Who gets the most likes on a single photo
SELECT 
    username,
    image_url,
    photos.id,
    COUNT(*) AS 'like_count'
FROM photos
INNER JOIN users
    ON photos.user_id = users.id 
INNER JOIN likes
    ON likes.photo_id = photos.id 
GROUP BY photos.id
ORDER BY like_count DESC LIMIT 1;