-- Table: Mods
CREATE TABLE Mods (
    id SERIAL PRIMARY KEY,
    mod_name VARCHAR(255) NOT NULL,
    description TEXT,
    user_id INT REFERENCES Users(id),
    date_publication DATE,
    creation_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- Table: Users
CREATE TABLE Users (
    id SERIAL PRIMARY KEY,
    username VARCHAR(50) NOT NULL,
    email VARCHAR(100) NOT NULL,
    password_hash VARCHAR(128) NOT NULL,
);

-- Table: Comments
CREATE TABLE Comments (
    id SERIAL PRIMARY KEY,
    paragraph TEXT NOT NULL,
    user_id INT REFERENCES Users(id),
    mod_id INT REFERENCES Mods(id),
    creation_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- Table: Likes
CREATE TABLE Likes (
    id SERIAL PRIMARY KEY,
    user_id INT REFERENCES Users(id),
    mod_id INT REFERENCES Mods(id),
    creation_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

