DROP DATABASE ig_clone;
CREATE DATABASE ig_clone;
USE ig_clone;

CREATE TABLE users(
    id INTEGER AUTO_INCREMENT PRIMARY KEY,
    username VARCHAR(255) UNIQUE NOT NULL,
    created_at TIMESTAMP DEFAULT NOW()
);

CREATE TABLE photos(
    id INTEGER AUTO_INCREMENT PRIMARY KEY,
    image_url VARCHAR(255) NOT NULL,
    user_id INTEGER NOT NULL,
    create_at TIMESTAMP DEFAULT NOW(),
    FOREIGN KEY(user_id) REFERENCES users(id)
);

CREATE TABLE comments(
    id INTEGER AUTO_INCREMENT PRIMARY KEY,
    comment_text VARCHAR(255) NOT NULL,
    user_id INTEGER NOT NULL,
    photo_id INTEGER NOT NULL,
    created_at TIMESTAMP DEFAULT NOW(),
    FOREIGN KEY (user_id) REFERENCES users(id),
    FOREIGN KEY (photo_id) REFERENCES photos(id)
);

INSERT INTO users(username) VALUES
('Captain'),
('IronMan'),
('Thor');

INSERT INTO photos(image_url, user_id) VALUES
('/image1', 1),
('/image2', 2),
('/image3', 2);

INSERT INTO comments(comment_text, user_id, photo_id) VALUES
('I can do this all day', 1, 2),
('I am Iron man', 3 , 2),
('I know it', 2, 1);

-- SELECT 
--     photos.image_url,
--     users.username
-- FROM photos
-- JOIN users
--     ON photos.user_id = users.id;

