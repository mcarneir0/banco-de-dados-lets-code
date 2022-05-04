DROP TABLE IF EXISTS public.clientes;

CREATE TABLE IF NOT EXISTS public.clientes
(
    "ID" SERIAL NOT NULL,
    "Nome" character varying(255) COLLATE pg_catalog."default" NOT NULL,
    "Email" character varying(255) COLLATE pg_catalog."default" NOT NULL,
    "Senha" character varying(255) COLLATE pg_catalog."default" NOT NULL,
    "CPF" character varying(11) COLLATE pg_catalog."default" NOT NULL,
    "Sexo" character(1) COLLATE pg_catalog."default",
    "Data de Nascimento" date NOT NULL,
    CONSTRAINT "Cliente_pkey" PRIMARY KEY ("ID")
)

TABLESPACE pg_default;


INSERT INTO clientes ("Nome", "Email", "Senha", "CPF", "Sexo", "Data de Nascimento") VALUES ('Matheus Carneiro', 'matheus@email.com', '123456', '12345678900', 'M', '1970-01-01');
INSERT INTO clientes ("Nome", "Email", "Senha", "CPF", "Sexo", "Data de Nascimento") VALUES ('Decio Santana', 'decio@email.com', '123456', '12345678900', 'M', '1970-01-01');
INSERT INTO clientes ("Nome", "Email", "Senha", "CPF", "Sexo", "Data de Nascimento") VALUES ('Gabriela Gomes', 'gabriela@email.com', '123456', '12345678900', 'F', '1970-01-01');
INSERT INTO clientes ("Nome", "Email", "Senha", "CPF", "Sexo", "Data de Nascimento") VALUES ('Pedro Mariano', 'pedro@email.com', '123456', '12345678900', 'M', '1970-01-01');
INSERT INTO clientes ("Nome", "Email", "Senha", "CPF", "Sexo", "Data de Nascimento") VALUES ('Ana Julia', 'julia@email.com', '123456', '12345678900', 'F', '1970-01-01');
INSERT INTO clientes ("Nome", "Email", "Senha", "CPF", "Sexo", "Data de Nascimento") VALUES ('Gabriel Gomes', 'gabriel@email.com', '123456', '12345678900', 'M', '1970-01-01');
INSERT INTO clientes ("Nome", "Email", "Senha", "CPF", "Sexo", "Data de Nascimento") VALUES ('Hiago Cardoso', 'hiago@email.com', '123456', '12345678900', 'M', '1970-01-01');
INSERT INTO clientes ("Nome", "Email", "Senha", "CPF", "Sexo", "Data de Nascimento") VALUES ('Marlon Faller', 'marlon@email.com', '123456', '12345678900', 'M', '1970-01-01');
INSERT INTO clientes ("Nome", "Email", "Senha", "CPF", "Sexo", "Data de Nascimento") VALUES ('Thales Vieira', 'thales@email.com', '123456', '12345678900', 'M', '1970-01-01');
INSERT INTO clientes ("Nome", "Email", "Senha", "CPF", "Sexo", "Data de Nascimento") VALUES ('Fabiana Ikeda', 'fabiana@email.com', '123456', '12345678900', 'F', '1970-01-01');
INSERT INTO clientes ("Nome", "Email", "Senha", "CPF", "Sexo", "Data de Nascimento") VALUES ('Josué Rodrigo', 'josue@email.com', '123456', '12345678900', 'M', '1970-01-01');
INSERT INTO clientes ("Nome", "Email", "Senha", "CPF", "Sexo", "Data de Nascimento") VALUES ('Manoella Rosi', 'manoella@email.com', '123456', '12345678900', 'F', '1970-01-01');
INSERT INTO clientes ("Nome", "Email", "Senha", "CPF", "Sexo", "Data de Nascimento") VALUES ('Mateus Powell', 'mateus@email.com', '123456', '12345678900', 'M', '1970-01-01');
INSERT INTO clientes ("Nome", "Email", "Senha", "CPF", "Sexo", "Data de Nascimento") VALUES ('Altair Fernandes', 'altair@email.com', '123456', '12345678900', 'M', '1970-01-01');
INSERT INTO clientes ("Nome", "Email", "Senha", "CPF", "Sexo", "Data de Nascimento") VALUES ('Debora Macedo', 'debora@email.com', '123456', '12345678900', 'F', '1970-01-01');
INSERT INTO clientes ("Nome", "Email", "Senha", "CPF", "Sexo", "Data de Nascimento") VALUES ('Luiz Antonio', 'luiz@email.com', '123456', '12345678900', 'M', '1970-01-01');
INSERT INTO clientes ("Nome", "Email", "Senha", "CPF", "Sexo", "Data de Nascimento") VALUES ('Salomão Leal', 'salomao@email.com', '123456', '12345678900', 'M', '1970-01-01');
INSERT INTO clientes ("Nome", "Email", "Senha", "CPF", "Sexo", "Data de Nascimento") VALUES ('Augusto Henrique', 'augusto@email.com', '123456', '12345678900', 'M', '1970-01-01');
INSERT INTO clientes ("Nome", "Email", "Senha", "CPF", "Sexo", "Data de Nascimento") VALUES ('Bruna Luchini', 'bruna@email.com', '123456', '12345678900', 'F', '1970-01-01');
INSERT INTO clientes ("Nome", "Email", "Senha", "CPF", "Sexo", "Data de Nascimento") VALUES ('Luan de Pinho', 'luan@email.com', '123456', '12345678900', 'M', '1970-01-01');
INSERT INTO clientes ("Nome", "Email", "Senha", "CPF", "Sexo", "Data de Nascimento") VALUES ('Lucas Rocha', 'lucas@email.com', '123456', '12345678900', 'M', '1970-01-01');
INSERT INTO clientes ("Nome", "Email", "Senha", "CPF", "Sexo", "Data de Nascimento") VALUES ('Vinicius Minotti', 'vinicius@email.com', '123456', '12345678900', 'M', '1970-01-01');
