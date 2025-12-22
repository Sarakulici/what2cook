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

INSERT INTO rezept (rezept_id, rezeptname, kochanleitung)
VALUES 
    
    (1, 'Pizza', '400 g Mehl in einer Schüssel geben, 1 KL Salz und 2 EL Olivenöl hinzugeben,
    ca. 15 g / die Hälfte eines Hefewürfels in 2.5 dl Wasser auflösen, 
    Mehl mit der Flüssigkeit von der Mitte aus anrühren, Teig gut kneten bis er glatt und geschmeidig ist, 
    Zugedeckt an der Wärme um das Doppelte aufgehen lassen, 
    Von Hand oder mit dem Wallholz kleine oder grosse runde Scheiben formen, 
    Auf mit Backpapier belegtes Blech geben, mit Tomatensauce belegen, beliebig mit Toppings belegen, 
    auf Oben/Unten bei 220° C für 25-30 min backen')

    Mehl, Salz, Olivenöl, Hefe, Tomatensauce
    
    (2,'Spaghetti', 'Topf mit Wasser auffüllen, 
    Reichlich Salz hinzufügen, Spaghetti ins kochende Wasser legen, 
    So lange kochen, wie es auf der Packung steht, Spaghetti absieben, 
    in den gleichen Topf wieder hinzugeben, ein Stück Butter unterrühren') 

    Spaghetti, Salz, Butter
    
    (3, 'Tomatensauce', 'Tomaten waschen, ein Kreuz mit dem Messer in die Tomaten schnitzen, 
    die Tomaten für 5 min in kochendes Wasser geben, Tomaten aus dem Wasser sieben und auskühlen lassen, 
    die Schale der Tomaten entfernen und in Stücke schneiden, 
    Bisschen Olivenöl in die Pfanne geben mit Knoblauch und gehackten Zwiebeln, 
    Sobald es heiss wird die Tomatenstücke hinzufügen und köcheln, 
    entweder mit einem Pürrirstab oder mit einer Gabel die Stücke klein hacken, 20 min köcheln lassen,
    mit Salz, Pfeffern und Kräuter würzen') 

    Tomaten, Olivenöl, Knoblauch, Zwiebel

    (4, 'toms Erbermarmeladenbrot mit Honig', 'Brotscheibe mit Erdbeermarmelade bestreichen, etwas Honig in die Mitte setzen')

    Brot, Erdbeermarmelade, Honig

    (5, 'Cinque Pi', 'Teigwaren in reichlich kochendem Salzwasser al dente garen,
    Rahm aufkochen. Tomatenpüree und Parmesan dazurühren und 1-2 Minuten köcheln lassen,
    Peterli daruntermischen und mit Pfeffer Salz und Muskatnuss würzen, 
    Sofort mit den gekochten Teigwaren mischen und servieren.')

    Pasta, Salz, Rahm, Tomatenpüree, Parmesan, Peterli, Pfeffer, Muskatnuss
    
    (6, 'Armer Ritter', 'Die Eier in der Milch verquirlen, Die Brotscheiben gut darin einweichen lassen,
    Inzwischen die Butter in einer Pfanne auslassen, Die Brotscheiben in der Butter goldbraun braten,
    Noch heiss mit Zucker und Zimt bestreuen und warm servieren')

    Brot, Eier, Milch, Zucker, Zimt 
    
    (7, 'Bruschetta', 'Ofen auf 240° C vorheizen, Brot in ca. 1 cm dicke Scheiben schneiden, auf ein Backblech legen, mit Öl beträufeln,
    für ca. 5 Min. auf der obersten Rille des Ofens backen, Herausnehmen und auf einem Gitter etwas abkühlen lassen, 
    Eine Knoblauchzehe schälen und halbieren, Brotscheiben mit Knoblauch einreiben, 
    600 g Tomaten vierteln sowie entkernen und dann in kleine Würfeli schneiden,
    etwas Basilikum fein schneiden dann 3 EL Olivenöl daruntermischen sowie mit Salz und Pfeffer würzen. 
    Tomaten auf den Brotscheiben verteilen.')

    Brot, Olivenöl, Knoblauch, Tomaten, Basilikum, Salz, Pfeffer

    
    (8, 'tortilla de patatas', 'Eine Zwiebel schälen und  in feine Streifen schneiden, 350 g Kartoffeln schälen und in ca. 2 mm dicke Scheiben hobeln.
    Olivenöl in einer Pfanne heiss werden lassen, Kartoffeln ca. 5 Min. anbraten und dabei salzen, 
    Zwiebel ca. 2 Min. mitbraten, 4 Eier verklopfen und mit Salz und Pfeffer würzen, Verquilten Eier über die Kartoffeln giessen, 
    Zugedeckt bei kleiner Hitze ca. 15 Min. fest werden lassen. Tortilla auf einen Teller stürzen, ein bisschen Öl in die Pfanne geben, 
    Tortilla mit der ungebackenen Seite nach unten in die Pfanne zurückgleiten lassen und für ca. 5 Min. fertig bratten.')

    Zwiebel, Kartoffel, Olivenöl, Salz, Pfeffer, Eier
    
    (9, 'Bratkartoffeln' 'Kartoffeln schälen und in kleine Würfel schneiden, die Kartoffelwürfel in Butter in einer Pfanne unter mehrmaligem Wenden ca. 5 Minuten andünsten, 
    Amschliessend sie zugedeckt bei mittlerer Hitze ca. 15 Minuten weich dünsten. Dann den Deckel entfernen und bei Bedarf wenig Bratbutter hinzufügen, 
    die Kartoffelwürfel goldbraun braten und salzen.')

    Kartoffel, Butter, Salz
;

INSERT INTO zutaten (zutaten_id, zutatname, rezept_id)
VALUES (1, 'Mehl', 1), (2, 'Salz', 1 und 5 und 7 und 8 und 9), (3, 'Olivenöl', 1 und 3 und 7 und 8), (4, 'Hefe', 1), (5, 'Tomatensauce', 1), 
(6, 'Spaghetti', 2), (7, 'Butter', 2 und 9), (8, 'Tomaten', 3 und 7), (9, 'Knoblauch', 3 und 7), (10, 'Zwiebel', 3 und 8), (11, 'Brot', 4 und 6 und 7), 
(12, 'Erdbeermarmelade', 4), (13, 'Honig', 4) (14, 'Pasta', 5), (15, 'Rahm', 5), (16, 'Tomatenpüree', 5), (17, 'Parmesan', 5),
(18, 'Peterli', 5), (19, 'Pfeffer', 5 und 7 und 8), (20, 'Muskatnuss', 5), (21, 'Eier', 6 und 8), (22, 'Milch', 6), (23, 'Zucker', 6), 
(24, 'Zimt, 6), (25, 'Basilikum', 7), (26, 'Kartoffel', 8 und 9);
