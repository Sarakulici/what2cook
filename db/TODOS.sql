DROP TABLE users; 
DROP TABLE todos;
DROP TABLE rezept;
DROP TABLE zutaten;

(CREATE TABLE users (
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
# Also wart, ich find mir sötten das mal nöt lösche, will mir es für euse Einkaufszelle bruche chönten
    
);

CREATE TABLE rezept (
    id INT AUTO_INCREMENT PRIMARY KEY,
    user_id INT NOT NULL,
    rezeptname VARCHAR(100) NOT NULL,
    kochanleitung TEXT NOT NULL,

    FOREIGN KEY (user_id) REFERENCES users(id)
);

CREATE TABLE zutaten (
    id INT AUTO_INCREMENT PRIMARY KEY,
    rezept_id INT NOT NULL,
    zutatname VARCHAR(100),

    FOREIGN KEY (rezept_id) REFERENCES rezept(id)
);

INSERT INTO rezept (rezeptname, kochanleitung)
VALUES 
    
    ('Pizza', '400 g Mehl in einer Schüssel geben, 1 KL Salz und 2 EL Olivenöl hinzugeben,
    ca. 15 g / die Hälfte eines Hefewürfels in 2.5 dl Wasser auflösen, 
    Mehl mit der Flüssigkeit von der Mitte aus anrühren, Teig gut kneten bis er glatt und geschmeidig ist, 
    Zugedeckt an der Wärme um das Doppelte aufgehen lassen, 
    Von Hand oder mit dem Wallholz kleine oder grosse runde Scheiben formen, 
    Auf mit Backpapier belegtes Blech geben, mit Tomatensauce belegen, beliebig mit Toppings belegen, 
    auf Oben/Unten bei 220° C für 25-30 min backen')

    1) Mehl, Salz, Olivenöl, Hefe, Tomatensauce
    
    ('Spaghetti', 'Topf mit Wasser auffüllen, 
    Reichlich Salz hinzufügen, Spaghetti ins kochende Wasser legen, 
    So lange kochen, wie es auf der Packung steht, Spaghetti absieben, 
    in den gleichen Topf wieder hinzugeben, ein Stück Butter unterrühren') 

    2) Spaghetti, Salz, Butter
    
    ('Tomatensauce', 'Tomaten waschen, ein Kreuz mit dem Messer in die Tomaten schnitzen, 
    die Tomaten für 5 min in kochendes Wasser geben, Tomaten aus dem Wasser sieben und auskühlen lassen, 
    die Schale der Tomaten entfernen und in Stücke schneiden, 
    Bisschen Olivenöl in die Pfanne geben mit Knoblauch und gehackten Zwiebeln, 
    Sobald es heiss wird die Tomatenstücke hinzufügen und köcheln, 
    entweder mit einem Pürrirstab oder mit einer Gabel die Stücke klein hacken, 20 min köcheln lassen,
    mit Salz, Pfeffern und Kräuter würzen') 

    3) Tomaten, Olivenöl, Knoblauch, Zwiebel

    ('toms Erbermarmeladenbrot mit Honig', 
    'Brotscheibe mit Erdbeermarmelade bestreichen, etwas Honig in die Mitte setzen, servieren')

    4) Brot, Erdbeermarmelade, Honig

    ('Cinque Pi', 'Teigwaren in reichlich kochendem Salzwasser al dente garen,
    Rahm aufkochen. Tomatenpüree und Parmesan dazurühren und 1-2 Minuten köcheln lassen,
    Peterli daruntermischen und mit Pfeffer Salz und Muskatnuss würzen, 
    Sofort mit den gekochten Teigwaren mischen und servieren.')

    5) Pasta, Salz, Rahm, Tomatenpüree, Parmesan, Peterli, Pfeffer, Muskatnuss
    
    ('Armer Ritter', 'Die Eier in der Milch verquirlen, Die Brotscheiben gut darin einweichen lassen,
    Inzwischen die Butter in einer Pfanne auslassen, Die Brotscheiben in der Butter goldbraun braten,
    Noch heiss mit Zucker und Zimt bestreuen und warm servieren')

    6) Brot, Eier, Milch, Zucker, Zimt 
    
    ('Bruschetta', 'Ofen auf 240° C vorheizen, Brot in ca. 1 cm dicke Scheiben schneiden, auf ein Backblech legen, mit Öl beträufeln,
    für ca. 5 Min. auf der obersten Rille des Ofens backen, Herausnehmen und auf einem Gitter etwas abkühlen lassen, 
    Eine Knoblauchzehe schälen und halbieren, Brotscheiben mit Knoblauch einreiben, 
    600 g Tomaten vierteln sowie entkernen und dann in kleine Würfeli schneiden,
    etwas Basilikum fein schneiden dann 3 EL Olivenöl daruntermischen sowie mit Salz und Pfeffer würzen. 
    Tomaten auf den Brotscheiben verteilen.')

    7) Brot, Olivenöl, Knoblauch, Tomaten, Basilikum, Salz, Pfeffer
    
    ('tortilla de patatas', 'Eine Zwiebel schälen und  in feine Streifen schneiden, 350 g Kartoffeln schälen und in ca. 2 mm dicke Scheiben hobeln.
    Olivenöl in einer Pfanne heiss werden lassen, Kartoffeln ca. 5 Min. anbraten und dabei salzen, 
    Zwiebel ca. 2 Min. mitbraten, 4 Eier verklopfen und mit Salz und Pfeffer würzen, Verquilten Eier über die Kartoffeln giessen, 
    Zugedeckt bei kleiner Hitze ca. 15 Min. fest werden lassen. Tortilla auf einen Teller stürzen, ein bisschen Öl in die Pfanne geben, 
    Tortilla mit der ungebackenen Seite nach unten in die Pfanne zurückgleiten lassen und für ca. 5 Min. fertig bratten.')

    8) Zwiebel, Kartoffel, Olivenöl, Salz, Pfeffer, Eier
    
    ('Bratkartoffeln' 'Kartoffeln schälen und in kleine Würfel schneiden, die Kartoffelwürfel in Butter in einer Pfanne unter mehrmaligem Wenden ca. 5 Minuten andünsten, 
    Amschliessend sie zugedeckt bei mittlerer Hitze ca. 15 Minuten weich dünsten. Dann den Deckel entfernen und bei Bedarf wenig Bratbutter hinzufügen, 
    die Kartoffelwürfel goldbraun braten und salzen.')

    9) Kartoffel, Butter, Salz
;

INSERT INTO zutaten (zutatname, rezept_id)
VALUES ('Mehl', 1), ('Salz', 1), ('Salz', 5), ('Salz', 7), ('Salz', 8), ('Salz', 9), 
('Olivenöl', 1), ('Olivenöl', 3), ('Olivenöl', 7), ('Olivenöl', 8), ('Hefe', 1), ('Tomatensauce', 1), 
('Spaghetti', 2), ('Butter', 2), ('Butter', 9), ('Tomaten', 3), ('Tomaten', 7), ('Knoblauch', 3), ('Knoblauch', 7), 
('Zwiebel', 3), ('Zwiebel', 8), ('Brot', 4), ('Brot', 6), ('Brot', 7), ('Erdbeermarmelade', 4), ('Honig', 4) ('Pasta', 5), 
('Rahm', 5), ('Tomatenpüree', 5), ('Parmesan', 5), ('Peterli', 5), ('Pfeffer', 5 und 7 und 8), ('Muskatnuss', 5), 
('Eier', 6), ('Eier', 8), ('Milch', 6), ('Zucker', 6), ('Zimt', 6), ('Basilikum', 7), ('Kartoffel', 8), ('Kartoffel',9);
