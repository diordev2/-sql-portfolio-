-- Avval Database yaratib olamiz
CREATE DATABASE chinook;
--Keyin undan foydalanmiz
 USE chinook;

-- Artist jadvali
CREATE TABLE Artist (
    ArtistId INT PRIMARY KEY,
    Name VARCHAR(100)
);

-- MediaType jadvali
CREATE TABLE MediaType (
    MediaTypeId INT PRIMARY KEY,
    Name VARCHAR(100)
);

-- Genre jadvali
CREATE TABLE Genre (
    GenreId INT PRIMARY KEY,
    Name VARCHAR(100)
);

-- Album jadvali
CREATE TABLE Album (
    AlbumId INT PRIMARY KEY,
    Title VARCHAR(100),
    ArtistId INT,
    FOREIGN KEY (ArtistId) REFERENCES Artist(ArtistId)
);

-- Track jadvali
CREATE TABLE Track (
    TrackId INT PRIMARY KEY,
    Name VARCHAR(100),
    AlbumId INT,
    MediaTypeId INT,
    GenreId INT,
    Composer VARCHAR(100),
    Milliseconds INT,
    Bytes INT,
    UnitPrice DECIMAL(10,2),
    FOREIGN KEY (AlbumId) REFERENCES Album(AlbumId),
    FOREIGN KEY (MediaTypeId) REFERENCES MediaType(MediaTypeId),
    FOREIGN KEY (GenreId) REFERENCES Genre(GenreId)
);

-- Playlist jadvali
CREATE TABLE Playlist (
    PlaylistId INT PRIMARY KEY,
    Name VARCHAR(100)
);

-- PlaylistTrack jadvali
CREATE TABLE PlaylistTrack (
    PlaylistId INT,
    TrackId INT,
    PRIMARY KEY (PlaylistId, TrackId),
    FOREIGN KEY (PlaylistId) REFERENCES Playlist(PlaylistId),
    FOREIGN KEY (TrackId) REFERENCES Track(TrackId)
);

-- Employee jadvali
CREATE TABLE Employee (
    EmployeeId INT PRIMARY KEY,
    LastName VARCHAR(100),
    FirstName VARCHAR(100),
    Title VARCHAR(100),
    ReportsTo INT,
    BirthDate DATE,
    HireDate DATE,
    Address VARCHAR(100),
    City VARCHAR(100),
    State VARCHAR(100),
    Country VARCHAR(100),
    PostalCode VARCHAR(20),
    Phone VARCHAR(20),
    Fax VARCHAR(20),
    Email VARCHAR(100),
    FOREIGN KEY (ReportsTo) REFERENCES Employee(EmployeeId)
);

-- Customer jadvali
CREATE TABLE Customer (
    CustomerId INT PRIMARY KEY,
    FirstName VARCHAR(100),
    LastName VARCHAR(100),
    Company VARCHAR(100),
    Address VARCHAR(100),
    City VARCHAR(100),
    State VARCHAR(100),
    Country VARCHAR(100),
    PostalCode VARCHAR(20),
    Phone VARCHAR(20),
    Fax VARCHAR(20),
    Email VARCHAR(100),
    SupportRepId INT,
    FOREIGN KEY (SupportRepId) REFERENCES Employee(EmployeeId)
);

-- Invoice jadvali
CREATE TABLE Invoice (
    InvoiceId INT PRIMARY KEY,
    CustomerId INT,
    InvoiceDate DATE,
    BillingAddress VARCHAR(100),
    BillingCity VARCHAR(100),
    BillingState VARCHAR(100),
    BillingCountry VARCHAR(100),
    BillingPostalCode VARCHAR(20),
    Total DECIMAL(10,2),
    FOREIGN KEY (CustomerId) REFERENCES Customer(CustomerId)
);

-- InvoiceLine jadvali
CREATE TABLE InvoiceLine (
    InvoiceLineId INT PRIMARY KEY,
    InvoiceId INT,
    TrackId INT,
    UnitPrice DECIMAL(10,2),
    Quantity INT,
    FOREIGN KEY (InvoiceId) REFERENCES Invoice(InvoiceId),
  -- Artist jadvaliga ma'lumot qo'shish
INSERT INTO Artist VALUES 
(1, 'The Beatles'),
(2, 'Queen'),
(3, 'Michael Jackson'),
(4, 'Madonna'),
(5, 'Led Zeppelin');

-- MediaType jadvaliga ma'lumot qo'shish
INSERT INTO MediaType VALUES 
(1, 'MPEG audio file'),
(2, 'Protected AAC audio file'),
(3, 'Purchased AAC audio file'),
(4, 'AAC audio file'),
(5, 'WAV audio file');

-- Genre jadvaliga ma'lumot qo'shish
INSERT INTO Genre VALUES 
(1, 'Rock'),
(2, 'Pop'),
(3, 'Jazz'),
(4, 'Classical'),
(5, 'Hip Hop');

-- Album jadvaliga ma'lumot qo'shish
INSERT INTO Album VALUES 
(1, 'Abbey Road', 1),
(2, 'A Night at the Opera', 2),
(3, 'Thriller', 3),
(4, 'Like a Virgin', 4),
(5, 'IV', 5);

-- Track jadvaliga ma'lumot qo'shish
INSERT INTO Track VALUES 
(1, 'Come Together', 1, 1, 1, 'Lennon/McCartney', 259, 1024, 0.99),
(2, 'Bohemian Rhapsody', 2, 1, 1, 'Mercury', 354, 2048, 1.29),
(3, 'Beat It', 3, 2, 2, 'Michael Jackson', 258, 1536, 1.09),
(4, 'Like a Virgin', 4, 1, 2, 'Madonna', 231, 1024, 0.99),
(5, 'Stairway to Heaven', 5, 1, 1, 'Page/Plant', 482, 3072, 1.49);

-- Playlist jadvaliga ma'lumot qo'shish
INSERT INTO Playlist VALUES 
(1, 'Classic Rock'),
(2, 'Pop Hits'),
(3, '80s Music'),
(4, 'Road Trip'),
(5, 'Workout');

-- PlaylistTrack jadvaliga ma'lumot qo'shish
INSERT INTO PlaylistTrack VALUES 
(1, 1),
(1, 2),
(2, 3),
(2, 4),
(3, 5);

-- Employee jadvaliga ma'lumot qo'shish
INSERT INTO Employee VALUES 
(1, 'Adams', 'Andrew', 'General Manager', NULL, '1962-02-18', '2002-08-14', '11120 Jasper Ave', 'Edmonton', 'AB', 'Canada', 'T5K 2N1', '+1 (780) 428-9482', NULL, 'andrew@chinookcorp.com'),
(2, 'Edwards', 'Nancy', 'Sales Manager', 1, '1958-12-08', '2002-05-01', '825 8 Ave SW', 'Calgary', 'AB', 'Canada', 'T2P 2T3', '+1 (403) 262-3443', NULL, 'nancy@chinookcorp.com'),
(3, 'Peacock', 'Jane', 'Sales Support Agent', 2, '1973-08-29', '2002-04-01', '1111 6 Ave SW', 'Calgary', 'AB', 'Canada', 'T2P 5M5', '+1 (403) 262-3443', NULL, 'jane@chinookcorp.com'),
(4, 'Park', 'Margaret', 'Sales Support Agent', 2, '1947-09-19', '2003-05-03', '683 10 Street SW', 'Calgary', 'AB', 'Canada', 'T2P 5G3', '+1 (403) 263-4423', NULL, 'margaret@chinookcorp.com'),
(5, 'Johnson', 'Steve', 'Sales Support Agent', 2, '1965-03-03', '2003-10-17', '7727B 41 Ave', 'Calgary', 'AB', 'Canada', 'T3B 1Y7', '+1 (403) 263-4283', NULL, 'steve@chinookcorp.com');

-- Customer jadvaliga ma'lumot qo'shish
INSERT INTO Customer VALUES 
(1, 'Luís', 'Gonçalves', 'Embraer', 'Av. Brigadeiro Faria Lima, 2170', 'São José dos Campos', 'SP', 'Brazil', '12227-000', '+55 (12) 3923-5555', NULL, 'luisg@embraer.com.br', 3),
(2, 'Eduardo', 'Martins', 'Woodstock Discos', 'Rua Dr. Falcão Filho, 155', 'São Paulo', 'SP', 'Brazil', '01007-010', '+55 (11) 3033-5446', NULL, 'eduardo@woodstock.com.br', 4),
(3, 'Alexandre', 'Rocha', 'Banco do Brasil', 'Av. Paulista, 2022', 'São Paulo', 'SP', 'Brazil', '01310-200', '+55 (11) 3055-3278', NULL, 'alero@banco.com.br', 5),
(4, 'Roberto', 'Almeida', 'Riotur', 'Praça Pio X, 119', 'Rio de Janeiro', 'RJ', 'Brazil', '20040-020', '+55 (21) 2271-7000', NULL, 'roberto.almeida@riotur.gov.br', 3),
(5, 'Mark', 'Taylor', 'Apple Inc.', '1 Infinite Loop', 'Cupertino', 'CA', 'USA', '95014', '+1 (408) 996-1010', NULL, 'mark.taylor@apple.com', 4);

-- Invoice jadvaliga ma'lumot qo'shish
INSERT INTO Invoice VALUES 
(1, 1, '2023-01-01', 'Av. Brigadeiro Faria Lima, 2170', 'São José dos Campos', 'SP', 'Brazil', '12227-000', 13.86),
(2, 2, '2023-01-02', 'Rua Dr. Falcão Filho, 155', 'São Paulo', 'SP', 'Brazil', '01007-010', 8.91),
(3, 3, '2023-01-03', 'Av. Paulista, 2022', 'São Paulo', 'SP', 'Brazil', '01310-200', 5.94),
(4, 4, '2023-01-04', 'Praça Pio X, 119', 'Rio de Janeiro', 'RJ', 'Brazil', '20040-020', 7.92),
(5, 5, '2023-01-05', '1 Infinite Loop', 'Cupertino', 'CA', 'USA', '95014', 15.86);

-- InvoiceLine jadvaliga ma'lumot qo'shish
INSERT INTO InvoiceLine VALUES 
(1, 1, 1, 0.99, 1),
(2, 1, 2, 1.29, 1),
(3, 2, 3, 1.09, 1),
(4, 3, 4, 0.99, 1),
(5, 4, 5, 1.49, 1);
    FOREIGN KEY (TrackId) REFERENCES Track(TrackId)
);
