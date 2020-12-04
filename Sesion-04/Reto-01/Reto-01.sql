CREATE DATABASE begeistert;  # Creará la DB

DROP DATABASE begeistert;  # Borrará la DB

USE begeistert;

CREATE TABLE users (
   id INT PRIMARY KEY,
   genero VARCHAR(1),
   edad INT,
   ocup INT,
   cp VARCHAR(20)
);

CREATE TABLE movies (
   id INT PRIMARY KEY,
   title VARCHAR(40),
   genres VARCHAR(50)
);

CREATE TABLE ratings (
   userId INT ,
   FOREIGN KEY (userId) REFERENCES users(id),
   movieId INT,
   FOREIGN KEY (movieId) REFERENCES movies(id),
   rating INT,
   date TIMESTAMP
);












