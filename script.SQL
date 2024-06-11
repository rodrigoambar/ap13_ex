CREATE TABLE tb_aluno(
	cod_id SERIAL PRIMARY KEY,
	Age INT,
	Gender INT,
	Salary INT,
	Prep_exam INT,
	notes INT,
	grade INT
);
-- 1.4 Escreva os seguintes stored procedures (incluindo um bloco anônimo de teste para cada
--um):
-- 1.4.1 Exibe o número de estudantes maiores de idade.
-- 1.4.2 Exibe o percentual de estudantes de cada sexo.
-- 1.4.3 Recebe um sexo como parâmetro em modo IN e utiliza oito parâmetros em modo OUT
-- para dizer qual o percentual de cada nota (variável grade) obtida por estudantes daquele
-- sexo.

--1.4,1
CREATE OR REPLACE PROCEDURE sp_maior_de_idade(
	 OUT cont INT
) LANGUAGE plpgsql
AS $$
BEGIN
	SELECT COUNT(*)
	INTO cont
	FROM tb_aluno
	WHERE Age > 1;
END;
$$

DO $$
DECLARE
cont INT;
BEGIN
	CALL sp_maior_de_idade(cont);
	RAISE NOTICE 'o número de alunos maiores de idade são : %', cont;
END;
$$
		





