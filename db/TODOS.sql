CREATE TABLE users (
    id INT AUTO_INCREMENT PRIMARY KEY,
    username VARCHAR(250) NOT NULL UNIQUE,
    password VARCHAR(250) NOT NULL
);

CREATE TABLE todos (
    id INT AUTO_INCREMENT PRIMARY KEY,
    user_id INT NOT NULL,
    content VARCHAR(100),
    due DATETIME,
    FOREIGN KEY (user_id) REFERENCES users(id)
);

CREATE TABLE rezpet (
    rezept.id INT AUTO_INCREMENT PRIMARY KEY,
    user_id INT NOT NULL,
    rezeptname VARCHAR(100),
    kochanleitung VARCHAR(100),

    FOREIGN KEY (user_id) REFERENCES users(id)
);

CREATE TABLE zutaten (
    zutaten.id INT AUTO_INCREMENT PRIMARY KEY,
    user_id INT NOT NULL,
    zutatname VARCHAR(100),

    FOREIGN KEY (user_id) REFERENCES users(id)
);

CREATE TABLE user (
    user.id INT AUTO_INCREMENT PRIMARY KEY,
    user_id INT NOT NULL,
    email VARCHAR(100),
    passwort VARCHAR(100),
    benutzername VARCHAR(100),

    FOREIGN KEY (user_id) REFERENCES users(id)
);
