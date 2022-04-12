DROP DATABASE IF EXISTS SpotifyClone;
CREATE SCHEMA SpotifyClone;
USE SpotifyClone;
CREATE TABLE SpotifyClone.artist (
  artist_id INT UNSIGNED NOT NULL PRIMARY KEY AUTO_INCREMENT,
  artist_name VARCHAR(100) NOT NULL UNIQUE
);
CREATE TABLE SpotifyClone.`signature` (
  signature_id INT UNSIGNED NOT NULL PRIMARY KEY AUTO_INCREMENT,
  signature_type VARCHAR(50) NOT NULL,
  price DECIMAL(10, 2) NOT NULL UNIQUE
);
CREATE TABLE SpotifyClone.album (
  album_id INT UNSIGNED NOT NULL PRIMARY KEY AUTO_INCREMENT,
  album_name VARCHAR(100) NOT NULL UNIQUE,
  release_year INT UNSIGNED NOT NULL,
  artist_id INT UNSIGNED NOT NULL,
  FOREIGN KEY (artist_id) REFERENCES artist (artist_id)
);
CREATE TABLE SpotifyClone.songs (
  song_id INT UNSIGNED NOT NULL PRIMARY KEY AUTO_INCREMENT,
  song_name VARCHAR(100) NOT NULL UNIQUE,
  duration_seconds INT UNSIGNED NOT NULL,
  album_id INT UNSIGNED NOT NULL,
  FOREIGN KEY (album_id) REFERENCES album (album_id)
);
CREATE TABLE SpotifyClone.`user` (
  user_id INT UNSIGNED NOT NULL PRIMARY KEY AUTO_INCREMENT,
  user_name VARCHAR(100) NOT NULL,
  age INT UNSIGNED NOT NULL,
  signature_id INT UNSIGNED NOT NULL,
  user_signature_date DATE NOT NULL,
  FOREIGN KEY (signature_id) REFERENCES `signature` (signature_id)
);
CREATE TABLE SpotifyClone.music_history (
  history_id INT UNSIGNED NOT NULL PRIMARY KEY AUTO_INCREMENT,
  song_id INT UNSIGNED NOT NULL,
  user_id INT UNSIGNED NOT NULL,
  reproduction_date DATETIME NOT NULL,
  FOREIGN KEY (song_id) REFERENCES songs (song_id),
  FOREIGN KEY (user_id) REFERENCES `user` (user_id)
);
CREATE TABLE SpotifyClone.`following` (
  user_id INT UNSIGNED NOT NULL,
  artist_id INT UNSIGNED NOT NULL
);