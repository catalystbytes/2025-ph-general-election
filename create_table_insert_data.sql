CREATE OR REPLACE TABLE `catalystbytes.ph_election.sws_survey` (
    Name STRING,
    Party STRING,
    Date DATE,
    Election STRING,
    Percentage FLOAT64
);

-- 
-- SOURCE: SWS latest survey
-- SUBJECT: Top 23 Senatorial Candidates for the 2025 Philippine General Election
-- NOTES:
--   - The election is scheduled for May 12, 2025.
--   - Data was UNPIVOTED from a summary format to individual monthly survey results.
--   - Based on the majority, the Top 12 candidates will likely win Senate seats.
--


INSERT INTO `catalystbytes.ph_election.sws_survey` (Name, Party, Date, Election, Percentage)
VALUES

('Go, Bong Go', 'PDPLBN', '2024-12-01', '2025 Philippine general election',32),
('Go, Bong Go', 'PDPLBN', '2025-01-01', '2025 Philippine general election',37),
('Go, Bong Go', 'PDPLBN', '2025-02-01', '2025 Philippine general election',38),
('Go, Bong Go', 'PDPLBN', '2025-03-01', '2025 Philippine general election',42),
('Go, Bong Go', 'PDPLBN', '2025-04-01', '2025 Philippine general election',45),
('Tulfo, Erwin', 'LAKAS', '2024-12-01', '2025 Philippine general election',45),
('Tulfo, Erwin', 'LAKAS', '2025-01-01', '2025 Philippine general election',45),
('Tulfo, Erwin', 'LAKAS', '2025-02-01', '2025 Philippine general election',45),
('Tulfo, Erwin', 'LAKAS', '2025-03-01', '2025 Philippine general election',42),
('Tulfo, Erwin', 'LAKAS', '2025-04-01', '2025 Philippine general election',42),
('Lapid, Lito', 'NPC', '2024-12-01', '2025 Philippine general election',23),
('Lapid, Lito', 'NPC', '2025-01-01', '2025 Philippine general election',37),
('Lapid, Lito', 'NPC', '2025-02-01', '2025 Philippine general election',36),
('Lapid, Lito', 'NPC', '2025-03-01', '2025 Philippine general election',33),
('Lapid, Lito', 'NPC', '2025-04-01', '2025 Philippine general election',34),
('Sotto, Tito', 'NPC', '2024-12-01', '2025 Philippine general election',31),
('Sotto, Tito', 'NPC', '2025-01-01', '2025 Philippine general election',38),
('Sotto, Tito', 'NPC', '2025-02-01', '2025 Philippine general election',34),
('Sotto, Tito', 'NPC', '2025-03-01', '2025 Philippine general election',34),
('Sotto, Tito', 'NPC', '2025-04-01', '2025 Philippine general election',33),
('Cayetano, Pia', 'NPC', '2024-12-01', '2025 Philippine general election',32),
('Cayetano, Pia', 'NPC', '2025-01-01', '2025 Philippine general election',33),
('Cayetano, Pia', 'NPC', '2025-02-01', '2025 Philippine general election',33),
('Cayetano, Pia', 'NPC', '2025-03-01', '2025 Philippine general election',31),
('Cayetano, Pia', 'NPC', '2025-04-01', '2025 Philippine general election',33),
('Dela Rosa, Bato', 'PDPLBN', '2024-12-01', '2025 Philippine general election',21),
('Dela Rosa, Bato', 'PDPLBN', '2025-01-01', '2025 Philippine general election',30),
('Dela Rosa, Bato', 'PDPLBN', '2025-02-01', '2025 Philippine general election',32),
('Dela Rosa, Bato', 'PDPLBN', '2025-03-01', '2025 Philippine general election',30),
('Dela Rosa, Bato', 'PDPLBN', '2025-04-01', '2025 Philippine general election',32),
('Bong Revilla, Ramon Jr.', 'LAKAS', '2024-12-01', '2025 Philippine general election',33),
('Bong Revilla, Ramon Jr.', 'LAKAS', '2025-01-01', '2025 Philippine general election',29),
('Bong Revilla, Ramon Jr.', 'LAKAS', '2025-02-01', '2025 Philippine general election',33),
('Bong Revilla, Ramon Jr.', 'LAKAS', '2025-03-01', '2025 Philippine general election',32),
('Bong Revilla, Ramon Jr.', 'LAKAS', '2025-04-01', '2025 Philippine general election',31),
('Tulfo, Ben Bitag', 'IND', '2024-12-01', '2025 Philippine general election',33),
('Tulfo, Ben Bitag', 'IND', '2025-01-01', '2025 Philippine general election',34),
('Tulfo, Ben Bitag', 'IND', '2025-02-01', '2025 Philippine general election',34),
('Tulfo, Ben Bitag', 'IND', '2025-03-01', '2025 Philippine general election',34),
('Tulfo, Ben Bitag', 'IND', '2025-04-01', '2025 Philippine general election',31),
('Binay, Abby', 'NPC', '2024-12-01', '2025 Philippine general election',30),
('Binay, Abby', 'NPC', '2025-01-01', '2025 Philippine general election',31),
('Binay, Abby', 'NPC', '2025-02-01', '2025 Philippine general election',30),
('Binay, Abby', 'NPC', '2025-03-01', '2025 Philippine general election',27),
('Binay, Abby', 'NPC', '2025-04-01', '2025 Philippine general election',29),
('Villar, Camille', 'NPC', '2024-12-01', '2025 Philippine general election',25),
('Villar, Camille', 'NPC', '2025-01-01', '2025 Philippine general election',26),
('Villar, Camille', 'NPC', '2025-02-01', '2025 Philippine general election',29),
('Villar, Camille', 'NPC', '2025-03-01', '2025 Philippine general election',27),
('Villar, Camille', 'NPC', '2025-04-01', '2025 Philippine general election',28),
('Lacson, Ping', 'IND', '2024-12-01', '2025 Philippine general election',21),
('Lacson, Ping', 'IND', '2025-01-01', '2025 Philippine general election',35),
('Lacson, Ping', 'IND', '2025-02-01', '2025 Philippine general election',32),
('Lacson, Ping', 'IND', '2025-03-01', '2025 Philippine general election',31),
('Lacson, Ping', 'IND', '2025-04-01', '2025 Philippine general election',26),
('Pacquiao, Manny Pacman', 'PFP', '2024-12-01', '2025 Philippine general election',26),
('Pacquiao, Manny Pacman', 'PFP', '2025-01-01', '2025 Philippine general election',33),
('Pacquiao, Manny Pacman', 'PFP', '2025-02-01', '2025 Philippine general election',30),
('Pacquiao, Manny Pacman', 'PFP', '2025-03-01', '2025 Philippine general election',27),
('Pacquiao, Manny Pacman', 'PFP', '2025-04-01', '2025 Philippine general election',25),
('Revillame, Willie Wil', 'IND', '2024-12-01', '2025 Philippine general election',26),
('Revillame, Willie Wil', 'IND', '2025-01-01', '2025 Philippine general election',29),
('Revillame, Willie Wil', 'IND', '2025-02-01', '2025 Philippine general election',30),
('Revillame, Willie Wil', 'IND', '2025-03-01', '2025 Philippine general election',28),
('Revillame, Willie Wil', 'IND', '2025-04-01', '2025 Philippine general election',24),
('Marcos, Imee R.', 'NP', '2024-12-01', '2025 Philippine general election',21),
('Marcos, Imee R.', 'NP', '2025-01-01', '2025 Philippine general election',28),
('Marcos, Imee R.', 'NP', '2025-02-01', '2025 Philippine general election',24),
('Marcos, Imee R.', 'NP', '2025-03-01', '2025 Philippine general election',19),
('Marcos, Imee R.', 'NP', '2025-04-01', '2025 Philippine general election',24),
('Aquino, Bam', 'KNP', '2024-12-01', '2025 Philippine general election',17),
('Aquino, Bam', 'KNP', '2025-01-01', '2025 Philippine general election',20),
('Aquino, Bam', 'KNP', '2025-02-01', '2025 Philippine general election',16),
('Aquino, Bam', 'KNP', '2025-03-01', '2025 Philippine general election',21),
('Aquino, Bam', 'KNP', '2025-04-01', '2025 Philippine general election',21),
('Pangilinan, Kiko', 'LP', '2024-12-01', '2025 Philippine general election',20),
('Pangilinan, Kiko', 'LP', '2025-01-01', '2025 Philippine general election',29),
('Pangilinan, Kiko', 'LP', '2025-02-01', '2025 Philippine general election',22),
('Pangilinan, Kiko', 'LP', '2025-03-01', '2025 Philippine general election',24),
('Pangilinan, Kiko', 'LP', '2025-04-01', '2025 Philippine general election',21),
('Salvador, Phillip Ice', 'PDPLBN', '2024-12-01', '2025 Philippine general election',10),
('Salvador, Phillip Ice', 'PDPLBN', '2025-01-01', '2025 Philippine general election',13),
('Salvador, Phillip Ice', 'PDPLBN', '2025-02-01', '2025 Philippine general election',14),
('Salvador, Phillip Ice', 'PDPLBN', '2025-03-01', '2025 Philippine general election',18),
('Salvador, Phillip Ice', 'PDPLBN', '2025-04-01', '2025 Philippine general election',18),
('Abalos, Benhur', 'PFP', '2024-12-01', '2025 Philippine general election',17),
('Abalos, Benhur', 'PFP', '2025-01-01', '2025 Philippine general election',19),
('Abalos, Benhur', 'PFP', '2025-02-01', '2025 Philippine general election',17),
('Abalos, Benhur', 'PFP', '2025-03-01', '2025 Philippine general election',17),
('Abalos, Benhur', 'PFP', '2025-04-01', '2025 Philippine general election',18),
('Honasan, Gringo', 'RP', '2024-12-01', '2025 Philippine general election',15),
('Honasan, Gringo', 'RP', '2025-01-01', '2025 Philippine general election',19),
('Honasan, Gringo', 'RP', '2025-02-01', '2025 Philippine general election',14),
('Honasan, Gringo', 'RP', '2025-03-01', '2025 Philippine general election',15),
('Honasan, Gringo', 'RP', '2025-04-01', '2025 Philippine general election',13),
('Marcoleta, Rodante', 'NPC', '2024-12-01', '2025 Philippine general election',6),
('Marcoleta, Rodante', 'NPC', '2025-01-01', '2025 Philippine general election',7),
('Marcoleta, Rodante', 'NPC', '2025-02-01', '2025 Philippine general election',10),
('Marcoleta, Rodante', 'NPC', '2025-03-01', '2025 Philippine general election',9),
('Marcoleta, Rodante', 'NPC', '2025-04-01', '2025 Philippine general election',13),
('Tolentino, Francis Tol', 'PFP', '2024-12-01', '2025 Philippine general election',14),
('Tolentino, Francis Tol', 'PFP', '2025-01-01', '2025 Philippine general election',13),
('Tolentino, Francis Tol', 'PFP', '2025-02-01', '2025 Philippine general election',15),
('Tolentino, Francis Tol', 'PFP', '2025-03-01', '2025 Philippine general election',13),
('Tolentino, Francis Tol', 'PFP', '2025-04-01', '2025 Philippine general election',12),
('Bosita, Colonel', 'IND', '2024-12-01', '2025 Philippine general election',8),
('Bosita, Colonel', 'IND', '2025-01-01', '2025 Philippine general election',11),
('Bosita, Colonel', 'IND', '2025-02-01', '2025 Philippine general election',10),
('Bosita, Colonel', 'IND', '2025-03-01', '2025 Philippine general election',12),
('Bosita, Colonel', 'IND', '2025-04-01', '2025 Philippine general election',11),
('Bondoc, Jimmy', 'PDPLBN', '2024-12-01', '2025 Philippine general election',3),
('Bondoc, Jimmy', 'PDPLBN', '2025-01-01', '2025 Philippine general election',4),
('Bondoc, Jimmy', 'PDPLBN', '2025-02-01', '2025 Philippine general election',7),
('Bondoc, Jimmy', 'PDPLBN', '2025-03-01', '2025 Philippine general election',9),
('Bondoc, Jimmy', 'PDPLBN', '2025-04-01', '2025 Philippine general election',9)
