CREATE DATABASE Sub_Projeto_Integrador;

USE Sub_Projeto_Integrador;

CREATE TABLE tb_Usuarios (
	Id_Usuario INT NOT NULL PRIMARY KEY IDENTITY,
	Nome_Completo VARCHAR(50) NOT NULL,
	Senha VARCHAR(10) NOT NULL,
	Email VARCHAR(20) NOT NULL,
	CPF VARCHAR(2) NOT NULL,
	Area_Interesse VARCHAR(20) NOT NULL,
	Formacao VARCHAR(10) NOT NULL,
	Curriculo VARCHAR(1000) NOT NULL
);

CREATE TABLE tb_Postagens (
	Id_Postagem INT NOT NULL PRIMARY KEY IDENTITY,
	Titulo VARCHAR(50) NOT NULL,
	Descricao VARCHAR(1000) NOT NULL,
	FK_criador INT NOT NULL,
	FOREIGN KEY (FK_criador) REFERENCES tb_Empresas (Id_Empresas),
	URL_Imagem VARCHAR(100) NULL,
	Data_Postagem DATE NOT NULL,
	
);

CREATE TABLE tb_Empresas (
	Id_Empresa INT NOT NULL PRIMARY KEY IDENTITY,
	Razao_Social VARCHAR(50) NOT NULL,
	Senha VARCHAR(10) NOT NULL,
	Email VARCHAR(20) NOT NULL,
	CNPJ VARCHAR(3) NOT NULL,
	FK_Colaboradores INT NULL,
	FOREIGN KEY (FK_Colaboradores) REFERENCES tb_Usuarios (Id_Usuarios)
	Area_Atuacao VARCHAR(30) NOT NULL,

);

CREATE TABLE tb_Anuncios (
	Id_Anuncio INT NOT NULL PRIMARY KEY IDENTITY,
	Curso_Gratuito VARCHAR(50) NULL,
	Curso_Pago VARCHAR(50) NULL,
	Evento VARCHAR(100) NULL,
	URL_Imagem VARCHAR(50) NULL,
	Descricao VARCHAR(1000) NULL,
);

CREATE TABLE tb_Conexoes (

);

CREATE TABLE tb_Nivel_Cargos(

);

CREATE TABLE tb_Mentorias(

);

CREATE TABLE tb_