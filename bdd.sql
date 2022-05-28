CREATE TABLE `genre` (
  `id` int PRIMARY KEY AUTO_INCREMENT,
  `genre` varchar(255)
);

CREATE TABLE `client` (
  `id` int PRIMARY KEY AUTO_INCREMENT,
  `nom` varchar(255),
  `prenom` varchar(255)
);

CREATE TABLE `genre_ville` (
  `id` int PRIMARY KEY AUTO_INCREMENT,
  `id_genre` int,
  `id_ville` int
);

CREATE TABLE `ville` (
  `id` int PRIMARY KEY AUTO_INCREMENT,
  `ville` varchar(255),
  `pays` varchar(255),
  `continent` varchar(255)
);

CREATE TABLE `ville_client` (
  `id` int PRIMARY KEY,
  `id_client` int,
  `id_ville` int
);

ALTER TABLE `genre_ville` ADD FOREIGN KEY (`id_ville`) REFERENCES `ville` (`id`);

ALTER TABLE `genre_ville` ADD FOREIGN KEY (`id_genre`) REFERENCES `genre` (`id`);

ALTER TABLE `ville_client` ADD FOREIGN KEY (`id_ville`) REFERENCES `ville` (`id`);

ALTER TABLE `ville_client` ADD FOREIGN KEY (`id_client`) REFERENCES `client` (`id`);
