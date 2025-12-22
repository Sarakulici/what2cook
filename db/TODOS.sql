CREATE TABLE users (
    id INT AUTO_INCREMENT PRIMARY KEY,
    user_id INT NOT NULL,
    email VARCHAR(100),
    passwort VARCHAR(100),
    benutzername VARCHAR(100)
);

CREATE TABLE todos (
    id INT AUTO_INCREMENT PRIMARY KEY,
    user_id INT NOT NULL,
    content VARCHAR(100),
    due DATETIME,
    
    FOREIGN KEY (user_id) REFERENCES users(id)
);

CREATE TABLE rezept (
    id INT AUTO_INCREMENT PRIMARY KEY,
    user_id INT NOT NULL,
    rezeptname VARCHAR(100),
    kochanleitung TEXT,

    FOREIGN KEY (user_id) REFERENCES users(id)
);

CREATE TABLE zutaten (
    id INT AUTO_INCREMENT PRIMARY KEY,
    rezept_id INT NOT NULL,
    zutatname VARCHAR(100),

    FOREIGN KEY (rezept_id) REFERENCES rezept(id)
);

INSERT INTO rezept (user_id, rezeptname, kochanleitung)
VALUES 
    
    (1, 'Pizza', '400 g Mehl in einer Schüssel geben, 1 KL Salz und 2 EL Olivenöl hinzugeben,
    ca. 15 g / die Hälfte eines Hefewürfels in 2.5 dl Wasser auflösen, 
    Mehl mit der Flüssigkeit von der Mitte aus anrühren, Teig gut kneten bis er glatt und geschmeidig ist, 
    Zugedeckt an der Wärme um das Doppelte aufgehen lassen, 
    Von Hand oder mit dem Wallholz kleine oder grosse runde Scheiben formen, 
    Auf mit Backpapier belegtes Blech geben, mit Tomatensauce belegen, beliebig mit Toppings belegen, 
    auf Oben/Unten bei 220° C für 25-30 min backen')

    Mehl, Salz, Olivenöl, Hefe, Tomatensauce
    
    (1,'Spaghetti', 'Topf mit Wasser auffüllen, 
    Reichlich Salz hinzufügen, Spaghetti ins kochende Wasser legen, 
    So lange kochen, wie es auf der Packung steht, Spaghetti absieben, 
    in den gleichen Topf wieder hinzugeben, ein Stück Butter unterrühren') 

    Spaghetti, Salz, Butter
    
    (1, 'Tomatensauce', 'Tomaten waschen, ein Kreuz mit dem Messer in die Tomaten schnitzen, 
    die Tomaten für 5 min in kochendes Wasser geben, Tomaten aus dem Wasser sieben und auskühlen lassen, 
    die Schale der Tomaten entfernen und in Stücke schneiden, 
    Bisschen Öl in die Pfanne geben mit Knoblauch und gehackten Zwiebeln, 
    Sobald es heiss wird die Tomatenstücke hinzufügen und köcheln, 
    entweder mit einem Pürrirstab oder mit einer Gabel die Stücke klein hacken, 20 min köcheln lassen,
    mit Salz, Pfeffern und Kräuter würzen') 

    Tomaten, Öl, Knoblauch, Zwiebel

    (1, 'toms Erbermarmeladenbrot mit Honig', 'Brotscheibe mit Erdbeermarmelade bestreichen, etwas Honig in die Mitte setzen')

    Brot, Erdbeermarmelade, Honig

    (1, 'Cinque Pi', )
    
    (1, 'Armer Ritter', 'Die Eier in der Milch verquirlen, Die Brotscheiben gut darin einweichen lassen,
    Inzwischen die Butter in einer Pfanne auslassen, Die Brotscheiben in der Butter goldbraun braten,
    Noch heiss mit Zucker und Zimt bestreuen und warm servieren')

    Brot, Eier, Milch, Zucker, Zimt 
    
    (1, 'Bruschetta')
    (1, 'tortilla de patatas')
    (1, 'Bratkartoffeln')

    ;
