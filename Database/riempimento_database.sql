USE Formula1;
-- Ho inserito le vetture 2021, piloti 2021 con anche lavorare (mancherebbero i team principal)
INSERT INTO Mondiale VALUES
(71, "È iniziato il 5 luglio e si è concluso il 13 dicembre, dopo diciassette gare, quattro in meno rispetto alla stagione precedente."),
(72, "È iniziato il 28 marzo e si è concluso il 12 dicembre, dopo ventidue gare, cinque in più rispetto alla stagione precedente, rendendolo all'epoca il campionato più lungo di sempre per numero di appuntamenti della storia della Formula 1."),
(73, "È iniziato il 20 marzo e si è concluso il 20 novembre, dopo ventidue gare, come nella stagione precedente, rendendolo all'epoca nuovamente il campionato più lungo di sempre per numero di appuntamenti della storia della Formula 1.");

INSERT INTO Regolamento VALUES
(15615, "Sistema di punteggio invariato -  Bocciata la proposta di sperimentare delle Sprint Race - Sviluppo delle vetture congelato", "Sempre nell’ottica di contenere i costi, sono state programmate la riduzione dei test aerodinamici e limitazioni alle prove al banco delle power unit."),
(45613, "Monoposto più pesanti - Gomme pirelli da 18 - Riduzione dei costi e aumento dello spettacolo in pista", "Tutto questo aumenterà notevolmente la qualità delle corse e renderà più piacevole la visione."),
(65821, "Disturbo aerodinamico minore - Meno turbolenze - Gomme meno soggette alla termica", "Tutto questo darà la possibilità ai piloti di seguire da vicino un competitor e di attaccare durante l'arco della gara.");

-- Vetture 2022
INSERT INTO Vettura VALUES
(73, "RB18", 1, 745), -- Max Verstappen (Paesi Bassi) (Red Bull)
(73, "MCL36", 3, 715), -- Daniel Ricciardo (Australia) (McLaren)
(73, "MCL36", 4, 715), -- Lando Norris (Regno Unito) (McLaren)
(73, "AMR22", 5, 710), -- Sebastian Vettel (Germania) (Aston Martin)
(73, "FW44", 6, 705), -- Nicholas Latifi (Canada) (Williams)
(73, "AT03", 10, 715), -- Pierre Gasly (Francia) (AlphaTauri)
(73, "RB18", 11, 745), -- Sergio Pérez (Messico) (Red Bull)
(73, "A522", 14, 730), -- Fernando Alonso (Spagna) (Alpine)
(73, "F1-75", 16, 740), -- Charles Leclerc (Principato di Monaco) (Ferrari)
(73, "AMR22", 18, 710), -- Lance Stroll (Canada) (Aston Martin)
(73, "VF-22", 20, 725), -- Kevin Magnussen (Danimarca) (Haas)
(73, "AT03", 22, 715), -- Yuki Tsunoda (Giappone) (AlphaTauri)
(73, "FW44", 23, 705), -- Alexander Albon (Thailandia) (Williams)
(73, "C42", 24, 710), -- Guanyu Zhou (Cina) (Alfa Romeo)
(73, "A522", 31, 730), -- Esteban Ocon (Francia) (Alpine)
(73, "W13", 44, 735), -- Lewis Hamilton (Regno Unito) (Mercedes)
(73, "VF-22", 47, 725), -- Mick Schumacher (Germania) (Haas)
(73, "F1-75", 55, 740), -- Carlos Sainz (Spagna) (Ferrari)
(73, "W13", 63, 735), -- George Russell (Regno Unito) (Mercedes)
(73, "C42", 77, 710); -- Valtteri Bottas (Finlandia) (Alfa Romeo)

-- Vetture 2021
INSERT INTO Vettura VALUES
(72, "RB16-B", 1, 745), -- Max Verstappen (Paesi Bassi) (Red Bull)
(72, "MCL35", 3, 715), -- Daniel Ricciardo (Australia) (McLaren)
(72, "MCL35", 4, 715), -- Lando Norris (Regno Unito) (McLaren)
(72, "AMR21", 5, 710), -- Sebastian Vettel (Germania) (Aston Martin)
(72, "FW43-B", 6, 705), -- Nicholas Latifi (Canada) (Williams)
(72, "AT02", 10, 715), -- Pierre Gasly (Francia) (AlphaTauri)
(72, "RB16-B", 11, 745), -- Sergio Pérez (Messico) (Red Bull)
(72, "A521", 14, 730), -- Fernando Alonso (Spagna) (Alpine)
(72, "SF21", 16, 740), -- Charles Leclerc (Principato di Monaco) (Ferrari)
(72, "AMR21", 18, 710), -- Lance Stroll (Canada) (Aston Martin)
(72, "VF-21", 9, 725), -- Nikita Mazepin (Russia) (Haas)
(72, "AT02", 22, 715), -- Yuki Tsunoda (Giappone) (AlphaTauri)
(72, "FW43-B", 63, 705), -- George Russell (Regno Unito) (Williams)
(72, "C41", 7, 710), -- Kimi Raikkonen (Finlandia) (Alfa Romeo)
(72, "A521", 31, 730), -- Esteban Ocon (Francia) (Alpine)
(72, "W12", 44, 735), -- Lewis Hamilton (Regno Unito) (Mercedes)
(72, "VF-21", 47, 725), -- Mick Schumacher (Germania) (Haas)
(72, "SF21", 55, 740), -- Carlos Sainz (Spagna) (Ferrari)
(72, "W12", 77, 735), -- Valtteri Bottas (Finlandia) 
(72, "C41", 99, 710); -- Antonio Giovinazzi (Italia) (Alfa Romeo)

INSERT INTO Scuderia VALUES
("Redbull", 2004),
("Ferrari", 1921),
("Mercedes", 1954),
("Alpine", 1977),
("McLaren", 1963),
("Alfa Romeo", 1950),
("AlphaTauri", 2020),
("Aston Martin", 1963),
("Haas", 2016),
("Williams", 1977),
("Force India", 2008),
("Lotus", 1958),
("Porsche", 1957),
("Renault", 1977),
("Racing Point", 1990);

INSERT INTO Partecipazione VALUES
(73, "Redbull"),
(73, "Ferrari"),
(73, "Mercedes"),
(73, "Alpine"),
(73, "McLaren"),
(73, "Alfa Romeo"),
(73, "AlphaTauri"),
(73, "Aston Martin"),
(73, "Haas"),
(73, "Williams"),
(72, "Redbull"),
(72, "Ferrari"),
(72, "Mercedes"),
(72, "Alpine"),
(72, "McLaren"),
(72, "Alfa Romeo"),
(72, "AlphaTauri"),
(72, "Aston Martin"),
(72, "Haas"),
(72, "Williams"),
(71, "Redbull"),
(71, "Ferrari"),
(71, "Mercedes"),
(71, "Renault"),
(71, "McLaren"),
(71, "Alfa Romeo"),
(71, "AlphaTauri"),
(71, "Racing Point"),
(71, "Haas"),
(71, "Williams");

INSERT INTO Team VALUES
("Redbull", "Team principal", 1),
("Redbull", "Pilota", 2),
("Redbull", "Meccanico", 50),
("Redbull", "Ristorazione", 20),
("Redbull", "Tecnico", 100),
("Redbull", "Ingegneristico", 15),
("Ferrari", "Team principal", 1),
("Ferrari", "Pilota", 2),
("Ferrari", "Meccanico", 55),
("Ferrari", "Ristorazione", 10),
("Ferrari", "Tecnico", 80),
("Ferrari", "Ingegneristico", 20),
("Ferrari", "Strategico", 25),
("Mercedes", "Team principal", 1),
("Mercedes", "Pilota", 2),
("Mercedes", "Meccanico", 70),
("Mercedes", "Ristorazione", 15),
("Mercedes", "Tecnico", 150),
("Mercedes", "Strategico", 40),
("Alpine", "Team principal", 1),
("Alpine", "Pilota", 2),
("Alpine", "Meccanico", 30),
("Alpine", "Ristorazione", 5),
("McLaren", "Team principal", 1),
("McLaren", "Pilota", 2),
("McLaren", "Ristorazione", 10),
("McLaren", "Tecnico", 50),
("McLaren", "Ingegneristico", 10),
("Alfa Romeo", "Team principal", 1),
("Alfa Romeo", "Pilota", 2),
("Alfa Romeo", "Strategico", 15),
("Alfa Romeo", "Tecnico", 20),
("Alfa Romeo", "Ingegneristico", 30),
("AlphaTauri", "Team principal", 1),
("AlphaTauri", "Pilota", 2),
("AlphaTauri", "Ristorazione", 35),
("AlphaTauri", "Tecnico", 30),
("AlphaTauri", "Ingegneristico", 25),
("Aston Martin", "Team principal", 1),
("Aston Martin", "Pilota", 2),
("Aston Martin", "Meccanico", 30),
("Aston Martin", "Ingegneristico", 25),
("Haas", "Team principal", 1),
("Haas", "Pilota", 2),
("Haas", "Meccanico", 25),
("Haas", "Ingegneristico", 5),
("Haas", "Strategico", 10),
("Williams", "Team principal", 1),
("Williams", "Pilota", 2),
("Williams", "Meccanico", 30),
("Williams", "Ingegneristico", 15),
("Renault", "Team principal", 1),
("Renault", "Pilota", 2),
("Renault", "Ristorazione", 20),
("Renault", "Tecnico", 40),
("Racing Point", "Team principal", 1),
("Racing Point", "Pilota", 2),
("Racing Point", "Meccanico", 40);

INSERT INTO Sviluppare VALUES
(73, 1, "Redbull", "Meccanico"),
(73, 16, "Ferrari", "Meccanico"),
(73, 44, "Mercedes", "Meccanico"),
(73, 14, "Alpine", "Meccanico"),
(73, 5, "Aston Martin", "Meccanico"),
(73, 20, "Haas", "Meccanico"),
(73, 6, "Williams", "Meccanico");

-- Dipendenti -> Piloti
INSERT INTO Dipendente VALUES 
("DG4B5", "Max", "Verstappen", "1997-09-30"),
("CBQF3", "Daniel", "Ricciardo", "1989-07-01"),
("JJF82", "Lando", "Norris", "1999-11-03"),
("H98JA", "Sebastian", "Vettel", "1987-07-03"),
("QML95", "Nicholas", "Latifi", "1995-06-29"),
("LVZN3", "Pierre", "Gasly", "1996-02-07"),
("67T4L", "Sergio", "Pérez", "1990-01-26"),
("M7W7N", "Fernando", "Alonso", "1981-07-29"),
("79Z3V", "Charles", "Leclerc", "1997-10-16"),
("5B8FT", "Lance", "Stroll", "1998-10-29"),
("ZK9ND", "Kevin", "Magnussen", "1992-10-05"),
("Q3PVB", "Yuki", "Tsunoda", "2000-05-11"),
("QR59E", "Alexander", "Albon", "1996-03-23"),
("S725G", "Guanyu", "Zhou", "1999-05-30"),
("4ZJ7J", "Esteban", "Ocon", "1996-09-17"),
("6B3ZF", "Lewis", "Hamilton", "1985-01-07"),
("4666U", "Mick", "Schumacher", "1999-03-22"),
("3CJ8R", "Carlos", "Sainz", "1994-09-01"),
("9UCVK", "George", "Russell", "1998-02-15"),
("P5BCL", "Valtteri", "Bottas", "1989-08-28"),
("V378Z", "Nikita", "Mazepin", "1999-03-02"),
("R48L9", "Kimi", "Raikkonen", "1979-10-17"),
("Q2ZRA", "Antonio", "Giovinazzi", "1993-12-14");

-- Dipendenti -> Team Principal
INSERT INTO Dipendente VALUES 
("MY4JX", "Christian", "Horner", "1973-11-16"),
("6NRCH","Mattia", "Binotto", "1969-11-03"),
("KC373","Toto", "Wolff", "1972-01-12"),
("HX69H","Otmar", "Szafnauer", "1964-08-13"),
("24CXD","Andreas", "Seidl", "1976-01-06"),
("TF3AW","Frédéric", "Vasseur", "1968-05-28"),
("U93XG","Franz", "Tost", "1956-01-20"),
("EJ2U4","Mike", "Krack", "1972-03-18"),
("KX5WW","Gunther", "Steiner", "1965-04-07"),
("L6XM4","Jost", "Capito", "1958-09-29");

INSERT INTO Pilota VALUES
("DG4B5", 72, 181, 80),
("CBQF3", 64, 175, 40),
("JJF82", 68, 170, 45),
("H98JA", 62, 176, 20),
("QML95", 74, 182, 5),
("LVZN3", 68, 177, 30),
("67T4L", 64, 173, 60),
("M7W7N", 68, 174, 25),
("79Z3V", 69, 180, 70),
("5B8FT", 70, 182, 35),
("ZK9ND", 68, 174, 30),
("Q3PVB", 54, 159, 20),
("QR59E", 74, 185, 5),
("S725G", 67, 156, 15),
("4ZJ7J", 66, 186, 15),
("6B3ZF", 71, 174, 65),
("4666U", 67, 176, 15),
("3CJ8R", 66, 178, 55),
("9UCVK", 66, 185, 55),
("P5BCL", 70, 173, 20),
("V378Z", 68, 176, 5),
("R48L9", 62, 175, 15),
("Q2ZRA", 63, 183, 10);

INSERT INTO TeamPrincipal VALUES
("MY4JX", 3000000),
("6NRCH", 2000000),
("KC373", 4000000),
("HX69H", 1500000), 
("24CXD", 1300000),
("TF3AW", 700000),
("U93XG", 500000),
("EJ2U4", 400000),
("KX5WW", 450000),
("L6XM4", 300000);

-- Lavorare -> Piloti
INSERT INTO Lavorare VALUES
("Redbull", "Pilota", "DG4B5", "2018-01-01", "2028-12-31"),
("McLaren", "Pilota", "CBQF3", "2020-01-01", "2022-12-31"),
("McLaren", "Pilota", "JJF82", "2020-01-01", "2025-12-31"),
("Aston Martin", "Pilota", "H98JA", "2020-01-01", "2022-12-31"),
("Williams", "Pilota", "QML95", "2019-01-01", "2022-12-31"),
("AlphaTauri", "Pilota", "LVZN3", "2020-01-01", "2024-12-31"),
("Redbull", "Pilota", "67T4L", "2020-01-01", "2024-12-31"),
("Alpine", "Pilota", "M7W7N", "2019-01-01", "2023-12-31"),
("Ferrari", "Pilota", "79Z3V", "2019-01-01", "2026-12-31"),
("Aston Martin", "Pilota", "5B8FT", "2021-01-01", "2025-12-31"),
("Haas", "Pilota", "ZK9ND", "2017-01-01", "2023-12-31"),
("AlphaTauri", "Pilota", "Q3PVB", "2020-01-01", "2024-12-31"),
("Williams", "Pilota", "QR59E", "2021-01-01", "2023-12-31"),
("Alfa Romeo", "Pilota", "S725G", "2018-01-01", "2022-12-31"),
("Alpine", "Pilota", "4ZJ7J", "2019-01-01", "2023-12-31"),
("Mercedes", "Pilota", "6B3ZF", "2014-01-01", "2025-12-31"),
("Haas", "Pilota", "4666U", "2020-01-01", "2024-12-31"),
("Ferrari", "Pilota", "3CJ8R", "2019-01-01", "2022-12-31"),
("Williams", "Pilota", "9UCVK", "2018-01-01", "2019-12-31"),
("Mercedes", "Pilota", "9UCVK", "2020-01-01", "2024-12-31"),
("Mercedes", "Pilota", "P5BCL", "2016-01-01", "2019-12-31"),
("Alfa Romeo", "Pilota", "P5BCL", "2020-01-01", "2023-12-31"),
("Haas", "Pilota", "V378Z", "2020-01-01", "2021-12-31"),
("Alfa Romeo", "Pilota", "R48L9", "2019-01-01", "2021-12-31"),
("Alfa Romeo", "Pilota", "Q2ZRA", "2020-01-01", "2021-12-31");

-- Lavorare -> Team Principal
INSERT INTO Lavorare VALUES
("Redbull", "Team principal", "MY4JX", "2008-01-01", "2013-12-31"),
("Redbull", "Team principal", "MY4JX", "2013-01-01", "2018-12-31"),
("Redbull", "Team principal", "MY4JX", "2018-01-01", "2023-12-31"),
("Ferrari", "Team principal", "6NRCH", "2019-01-01", "2022-12-31"),
("Mercedes", "Team principal", "KC373", "2009-01-01", "2014-12-31"),
("Mercedes", "Team principal", "KC373", "2014-01-01", "2019-12-31"),
("Mercedes", "Team principal", "KC373", "2019-01-01", "2024-12-31"),
("Alpine", "Team principal", "HX69H", "2019-01-01", "2023-12-31"),
("McLaren", "Team principal", "24CXD", "2020-01-01", "2022-12-31"),
("Alfa Romeo", "Team principal", "TF3AW", "2018-01-01", "2022-12-31"),
("AlphaTauri", "Team principal", "U93XG", "2020-01-01", "2024-12-31"),
("Aston Martin", "Team principal", "EJ2U4", "2021-01-01", "2025-12-31"),
("Haas", "Team principal", "KX5WW", "2016-01-01", "2020-12-31"),
("Haas", "Team principal", "KX5WW", "2020-01-01", "2024-12-31"),
("Williams", "Team principal", "L6XM4", "2021-01-01", "2023-12-31");

INSERT INTO Circuito VALUES
('Bahrain International Circuit', "Sakhir"),
('Baku City Circuit', "BO"),
('Circuit de Barcelona-Catalunya', "Spagna"),
('Red Bull Ring', "Austria"),
('Silverstone Circuit', "Gran Bretagnia"),
('Imola Circuit', "Italia"),
('Spa-Francorchamps', "Belgio"),
('Circuit de Monaco', "Monaco"),
('Autodromo Nazionale Monza', "Italia");

-- Svolgimento delle gare
INSERT INTO Gara VALUES
("2022-03-18", "Bahrain International Circuit", "DG4B5", 5, 10),
("2022-03-18", "Bahrain International Circuit", "CBQF3", 3, 15),
("2022-03-18", "Bahrain International Circuit", "JJF82", 4, 12),
("2022-03-18", "Bahrain International Circuit", "H98JA", 9, 2),
("2022-03-18", "Bahrain International Circuit", "QML95", 10, 1),
("2022-03-18", "Bahrain International Circuit", "LVZN3", 1, 25),
("2022-03-18", "Bahrain International Circuit", "67T4L", 2, 18),
("2022-03-18", "Bahrain International Circuit", "M7W7N", 8, 4),
("2022-03-18", "Bahrain International Circuit", "79Z3V", 6, 8),
("2022-03-18", "Bahrain International Circuit", "5B8FT", 7, 6),
("2022-03-18", "Bahrain International Circuit", "ZK9ND", 20, 0),
("2022-03-18", "Bahrain International Circuit", "Q3PVB", 19, 0),
("2022-03-18", "Bahrain International Circuit", "QR59E", 18, 0),
("2022-03-18", "Bahrain International Circuit", "S725G", 17, 0),
("2022-03-18", "Bahrain International Circuit", "4ZJ7J", 16, 0),
("2022-03-18", "Bahrain International Circuit", "6B3ZF", 15, 0),
("2022-03-18", "Bahrain International Circuit", "4666U", 14, 0),
("2022-03-18", "Bahrain International Circuit", "3CJ8R", 13, 0),
("2022-03-18", "Bahrain International Circuit", "9UCVK", 12, 0),
("2022-03-18", "Bahrain International Circuit", "P5BCL", 11, 0);

INSERT INTO Gara VALUES
("2022-04-30", "Silverstone Circuit", "DG4B5", 4, 12),
("2022-04-30", "Silverstone Circuit", "CBQF3", 6, 8),
("2022-04-30", "Silverstone Circuit", "JJF82", 10, 1),
("2022-04-30", "Silverstone Circuit", "H98JA", 17, 0),
("2022-04-30", "Silverstone Circuit", "QML95", 19, 0),
("2022-04-30", "Silverstone Circuit", "LVZN3", 1, 25),
("2022-04-30", "Silverstone Circuit", "67T4L", 8, 4),
("2022-04-30", "Silverstone Circuit", "M7W7N", 16, 0),
("2022-04-30", "Silverstone Circuit", "79Z3V", 13, 0),
("2022-04-30", "Silverstone Circuit", "5B8FT", 14, 0),
("2022-04-30", "Silverstone Circuit", "ZK9ND", 9, 2),
("2022-04-30", "Silverstone Circuit", "Q3PVB", 15, 0),
("2022-04-30", "Silverstone Circuit", "QR59E", 18, 0),
("2022-04-30", "Silverstone Circuit", "S725G", 12, 0),
("2022-04-30", "Silverstone Circuit", "4ZJ7J", 5, 10),
("2022-04-30", "Silverstone Circuit", "6B3ZF", 11, 0),
("2022-04-30", "Silverstone Circuit", "4666U", 3, 15),
("2022-04-30", "Silverstone Circuit", "3CJ8R", 20, 0),
("2022-04-30", "Silverstone Circuit", "9UCVK", 7, 6),
("2022-04-30", "Silverstone Circuit", "P5BCL", 2, 18);

INSERT INTO Gara VALUES
("2022-12-18", "Imola Circuit", "DG4B5", 14, 0),
("2022-12-18", "Imola Circuit", "CBQF3", 2, 18),
("2022-12-18", "Imola Circuit", "JJF82", 15, 0),
("2022-12-18", "Imola Circuit", "H98JA", 6, 8),
("2022-12-18", "Imola Circuit", "QML95", 17, 0),
("2022-12-18", "Imola Circuit", "LVZN3", 4, 12),
("2022-12-18", "Imola Circuit", "67T4L", 12, 0),
("2022-12-18", "Imola Circuit", "M7W7N", 7, 6),
("2022-12-18", "Imola Circuit", "79Z3V", 18, 0),
("2022-12-18", "Imola Circuit", "5B8FT", 10, 1),
("2022-12-18", "Imola Circuit", "ZK9ND", 13, 0),
("2022-12-18", "Imola Circuit", "Q3PVB", 11, 0),
("2022-12-18", "Imola Circuit", "QR59E", 16, 0),
("2022-12-18", "Imola Circuit", "S725G", 8, 4),
("2022-12-18", "Imola Circuit", "4ZJ7J", 5, 10),
("2022-12-18", "Imola Circuit", "6B3ZF", 20, 0),
("2022-12-18", "Imola Circuit", "4666U", 9, 2),
("2022-12-18", "Imola Circuit", "3CJ8R", 1, 25),
("2022-12-18", "Imola Circuit", "9UCVK", 19, 0),
("2022-12-18", "Imola Circuit", "P5BCL", 3, 15);

INSERT INTO Gara VALUES
("2022-07-12", "Baku City Circuit", "DG4B5", 14, 0),
("2022-07-12", "Baku City Circuit", "CBQF3", 2, 18),
("2022-07-12", "Baku City Circuit", "JJF82", 15, 0),
("2022-07-12", "Baku City Circuit", "H98JA", 6, 8),
("2022-07-12", "Baku City Circuit", "QML95", 17, 0),
("2022-07-12", "Baku City Circuit", "LVZN3", 4, 12),
("2022-07-12", "Baku City Circuit", "67T4L", 12, 0),
("2022-07-12", "Baku City Circuit", "M7W7N", 7, 6),
("2022-07-12", "Baku City Circuit", "79Z3V", 18, 0),
("2022-07-12", "Baku City Circuit", "5B8FT", 10, 1),
("2022-07-12", "Baku City Circuit", "ZK9ND", 13, 0),
("2022-07-12", "Baku City Circuit", "Q3PVB", 11, 0),
("2022-07-12", "Baku City Circuit", "QR59E", 16, 0),
("2022-07-12", "Baku City Circuit", "S725G", 8, 4),
("2022-07-12", "Baku City Circuit", "4ZJ7J", 5, 10),
("2022-07-12", "Baku City Circuit", "6B3ZF", 20, 0),
("2022-07-12", "Baku City Circuit", "4666U", 9, 2),
("2022-07-12", "Baku City Circuit", "3CJ8R", 1, 25),
("2022-07-12", "Baku City Circuit", "9UCVK", 19, 0),
("2022-07-12", "Baku City Circuit", "P5BCL", 3, 15);

INSERT INTO Gara VALUES
("2022-03-23", "Circuit de Barcelona-Catalunya", "DG4B5", 4, 12),
("2022-03-23", "Circuit de Barcelona-Catalunya", "CBQF3", 6, 8),
("2022-03-23", "Circuit de Barcelona-Catalunya", "JJF82", 10, 1),
("2022-03-23", "Circuit de Barcelona-Catalunya", "H98JA", 17, 0),
("2022-03-23", "Circuit de Barcelona-Catalunya", "QML95", 19, 0),
("2022-03-23", "Circuit de Barcelona-Catalunya", "LVZN3", 1, 25),
("2022-03-23", "Circuit de Barcelona-Catalunya", "67T4L", 8, 4),
("2022-03-23", "Circuit de Barcelona-Catalunya", "M7W7N", 16, 0),
("2022-03-23", "Circuit de Barcelona-Catalunya", "79Z3V", 13, 0),
("2022-03-23", "Circuit de Barcelona-Catalunya", "5B8FT", 14, 0),
("2022-03-23", "Circuit de Barcelona-Catalunya", "ZK9ND", 9, 2),
("2022-03-23", "Circuit de Barcelona-Catalunya", "Q3PVB", 15, 0),
("2022-03-23", "Circuit de Barcelona-Catalunya", "QR59E", 18, 0),
("2022-03-23", "Circuit de Barcelona-Catalunya", "S725G", 12, 0),
("2022-03-23", "Circuit de Barcelona-Catalunya", "4ZJ7J", 5, 10),
("2022-03-23", "Circuit de Barcelona-Catalunya", "6B3ZF", 11, 0),
("2022-03-23", "Circuit de Barcelona-Catalunya", "4666U", 3, 15),
("2022-03-23", "Circuit de Barcelona-Catalunya", "3CJ8R", 20, 0),
("2022-03-23", "Circuit de Barcelona-Catalunya", "9UCVK", 7, 6),
("2022-03-23", "Circuit de Barcelona-Catalunya", "P5BCL", 2, 18);

INSERT INTO Gara VALUES
("2022-03-28", "Red Bull Ring", "DG4B5", 5, 10),
("2022-03-28", "Red Bull Ring", "CBQF3", 3, 15),
("2022-03-28", "Red Bull Ring", "JJF82", 4, 12),
("2022-03-28", "Red Bull Ring", "H98JA", 9, 2),
("2022-03-28", "Red Bull Ring", "QML95", 10, 1),
("2022-03-28", "Red Bull Ring", "LVZN3", 1, 25),
("2022-03-28", "Red Bull Ring", "67T4L", 2, 18),
("2022-03-28", "Red Bull Ring", "M7W7N", 8, 4),
("2022-03-28", "Red Bull Ring", "79Z3V", 6, 8),
("2022-03-28", "Red Bull Ring", "5B8FT", 7, 6),
("2022-03-28", "Red Bull Ring", "ZK9ND", 20, 0),
("2022-03-28", "Red Bull Ring", "Q3PVB", 19, 0),
("2022-03-28", "Red Bull Ring", "QR59E", 18, 0),
("2022-03-28", "Red Bull Ring", "S725G", 17, 0),
("2022-03-28", "Red Bull Ring", "4ZJ7J", 16, 0),
("2022-03-28", "Red Bull Ring", "6B3ZF", 15, 0),
("2022-03-28", "Red Bull Ring", "4666U", 14, 0),
("2022-03-28", "Red Bull Ring", "3CJ8R", 13, 0),
("2022-03-28", "Red Bull Ring", "9UCVK", 12, 0),
("2022-03-28", "Red Bull Ring", "P5BCL", 11, 0);

-- Faccio partecipare solo 2 piloti a tutte le gare
INSERT INTO Gara VALUES
("2022-07-14", "Spa-Francorchamps", "DG4B5", 5, 10),
("2022-07-14", "Spa-Francorchamps", "CBQF3", 3, 15),
("2022-12-01", "Circuit de Monaco", "DG4B5", 5, 10),
("2022-12-01", "Circuit de Monaco", "CBQF3", 3, 15),
("2022-06-10", "Autodromo Nazionale Monza", "DG4B5", 5, 10),
("2022-06-10", "Autodromo Nazionale Monza", "CBQF3", 3, 15);