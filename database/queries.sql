-- Query 1: Retrieve mod details along with the username of the mod's author
SELECT Mods.mod_name, Mods.description, Users.username AS author
FROM Mods
INNER JOIN Users ON Mods.user_id = Users.id
WHERE Mods.id = 1; 

-- Query 2: List all comments for a specific mod (Mod B) along with the usernames of the commenters
SELECT Users.username, Comments.paragraph
FROM Comments
INNER JOIN Users ON Comments.user_id = Users.id
WHERE Comments.mod_id = 2;

-- Query 3: Find the most liked mods and their total likes
SELECT Mods.mod_name, COUNT(Likes.id) AS total_likes
FROM Mods
LEFT JOIN Likes ON Mods.id = Likes.mod_id
GROUP BY Mods.mod_name
ORDER BY total_likes DESC
LIMIT 10;

-- Query 4: Retrieve the latest comments for all mods, including the mod name and comment text
SELECT Mods.mod_name, Comments.paragraph, Comments.creation_date
FROM Comments
INNER JOIN Mods ON Comments.mod_id = Mods.id
ORDER BY Comments.creation_date DESC
LIMIT 10;