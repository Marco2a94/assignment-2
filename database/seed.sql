INSERT INTO Users (username, email, password_hash) VALUES
    ('AlphaUser123', 'alpha@example.com', 'thisPasswordIsNotSecured'),
    ('BetaUser456', 'beta@example.com', 'notVerySecuredTooAsAPassword');

INSERT INTO Mods (mod_name, description, user_id, date_publication) VALUES
    ('Journey map', 'Allow you to use better maps', 1, '2023-01-10'),
    ('Immersive Engineering', 'Use real-life engineering machines in your game', 2, '2023-02-15');

INSERT INTO Comments (paragraph, user_id, mod_id) VALUES
    ('This is a comment on Mod A', 1, 1),
    ('Another comment on Mod A', 2, 1),
    ('Comment on Mod B, last but not least', 1, 2);

INSERT INTO Likes (user_id, mod_id) VALUES
    (1, 1),
    (2, 2);