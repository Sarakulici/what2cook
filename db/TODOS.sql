CREATE TABLE users (
    id INT AUTO_INCREMENT PRIMARY KEY,
    users_id INT NOT NULL,
    email VARCHAR(100),
    passwort VARCHAR(100),
    benutzername VARCHAR(100),
);

CREATE TABLE todos (
    id INT AUTO_INCREMENT PRIMARY KEY,
    users_id INT NOT NULL,
    content VARCHAR(100),
    due DATETIME,
    
    FOREIGN KEY (users_id) REFERENCES users(id)
);

CREATE TABLE rezept (
    id INT AUTO_INCREMENT PRIMARY KEY,
    users_id INT NOT NULL,
    rezeptname VARCHAR(100),
    kochanleitung VARCHAR(100),

    FOREIGN KEY (users_id) REFERENCES users(id)
);

CREATE TABLE zutaten (
    id INT AUTO_INCREMENT PRIMARY KEY,
    rezept_id INT NOT NULL,
    zutatname VARCHAR(100),

    FOREIGN KEY (rezept_id) REFERENCES rezept(id)
);

