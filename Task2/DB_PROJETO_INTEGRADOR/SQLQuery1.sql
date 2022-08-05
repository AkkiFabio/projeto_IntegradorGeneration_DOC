CREATE DATABASE Projeto_Integrador;

USE Projeto_Integrador;

CREATE TABLE tb_Usuarios (
	Id_Usuario INT NOT NULL PRIMARY KEY IDENTITY,
	Nome VARCHAR(50) NOT NULL,
	Senha VARCHAR(10) NOT NULL,
	Email VARCHAR(20) NOT NULL,
	CPF_CNPJ VARCHAR(2) NOT NULL,
	Area_Interesse VARCHAR(20) NOT NULL
);

CREATE TABLE tb_Postagens (
	Id_Postagem INT NOT NULL PRIMARY KEY IDENTITY,
	Titulo VARCHAR(50) NOT NULL,
	Descricao VARCHAR(1000) NOT NULL,
	FK_Criador INT NOT NULL,
	FOREIGN KEY (FK_Criador) REFERENCES tb_Usuarios (Id_Usuario),
	FK_Categoria INT NOT NULL,
	FOREIGN KEY (FK_Categoria) REFERENCES tb_Grupos (Id_Grupo),
	Data_Postagem DATE NOT NULL
);

CREATE TABLE tb_Grupos (
	Id_Grupo INT NOT NULL PRIMARY KEY IDENTITY,
	Categoria VARCHAR(20) NOT NULL,
	Senioridade VARCHAR(20) NULL,
	FK_Usuario INT NULL,
	FOREIGN KEY (FK_Usuario) REFERENCES tb_Usuarios (Id_Usuario),
);

DROP TABLE tb_Postagens;
DROP TABLE tb_Empresas;
DROP TABLE tb_Usuarios;