CREATE DATABASE IF NOT EXISTS `Biblioteca`;

USE `Biblioteca`;

CREATE TABLE IF NOT EXISTS `Livros` (
    `id` INT PRIMARY KEY,
    `titulo` VARCHAR(264),
    `ano` DATE,
    `quantidade_paginas` INT,
    `edicao` VARCHAR(264),
    `ISBN` INT,
    `idioma` VARCHAR(264),
    `disponibilidade` BOOLEAN,
    `id_autores_fk` INT,
    `id_generos_fk` INT,
    `id_editoras_fk` INT
);

CREATE TABLE IF NOT EXISTS `Pessoas` (
  `id` int PRIMARY KEY,
  `nome` varchar(264),
  `email` varchar(264),
  `cpf` varchar(11),
  `telefone` varchar(11),
  `nascimento` date,
  `id_enderecos_fk` int
);

CREATE TABLE IF NOT EXISTS `Usuarios` (
  `id` int PRIMARY KEY,
  `senha` varchar(264),
  `id_pessoas_fk` int
);

CREATE TABLE IF NOT EXISTS `Funcionarios` (
  `id` int PRIMARY KEY,
  `senha` varchar(264),
  `cargo` varchar(264),
  `id_pessoas_fk` int
);

CREATE TABLE IF NOT EXISTS `Autores` (
  `id` int PRIMARY KEY,
  `quantidade_livros` int,
  `id_pessoas_fk` int
);

CREATE TABLE IF NOT EXISTS `Enderecos` (
  `id` int PRIMARY KEY,
  `rua` varchar(264),
  `numero` int,
  `cep` varchar(264),
  `complemento` varchar(264)
);

CREATE TABLE IF NOT EXISTS `Editoras` (
  `id` int PRIMARY KEY,
  `empresa` varchar(264),
  `cnpj` varchar(14),
  `telefone` int,
  `email` varchar(264)
);

CREATE TABLE IF NOT EXISTS `Generos` (
  `id` int PRIMARY KEY,
  `categoria` enum(
  'comedia', 
  'acao', 
  'suspense',
  'drama',
  'ficcao', 
  'terror',
  'policial',
  'romance',
  'aventura',
  'realismo',
  'parnasialismo',
  'simbolismo',
  'academicos',
  'literatura universal'
 )
);

CREATE TABLE IF NOT EXISTS `Emprestimos` (
  `id` int PRIMARY KEY,
  `data_emprestimo` timestamp,
  `data_devolucao` date,
  `id_livros_fk` int,
  `id_funcionarios_fK` int,
  `id_usuarios_fk` int
);

ALTER TABLE `Livros` ADD FOREIGN KEY (`id_autores_fk`) REFERENCES `Autores` (`id`);

ALTER TABLE `Livros` ADD FOREIGN KEY (`id_generos_fk`) REFERENCES `Generos` (`id`);

ALTER TABLE `Livros` ADD FOREIGN KEY (`id_editoras_fk`) REFERENCES `Editoras` (`id`);

ALTER TABLE `Pessoas` ADD FOREIGN KEY (`id_enderecos_fk`) REFERENCES `Enderecos` (`id`);

ALTER TABLE `Usuarios` ADD FOREIGN KEY (`id_pessoas_fk`) REFERENCES `Pessoas` (`id`);

ALTER TABLE `Funcionarios` ADD FOREIGN KEY (`id_pessoas_fk`) REFERENCES `Pessoas` (`id`);

ALTER TABLE `Autores` ADD FOREIGN KEY (`id_pessoas_fk`) REFERENCES `Pessoas` (`id`);

ALTER TABLE `Emprestimos` ADD FOREIGN KEY (`id_livros_fk`) REFERENCES `Livros` (`id`);

ALTER TABLE `Emprestimos` ADD FOREIGN KEY (`id_funcionarios_fK`) REFERENCES `Funcionarios` (`id`);

ALTER TABLE `Emprestimos` ADD FOREIGN KEY (`id_usuarios_fk`) REFERENCES `Usuarios` (`id`);
