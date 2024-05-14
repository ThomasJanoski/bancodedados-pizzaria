DELIMITER $

CREATE PROCEDURE novaPizza(sabor VARCHAR(50), ingredientes TEXT, preco INT, receitaID INT, pizzayolloID INT)
BEGIN
	INSERT INTO Pizzas (sabor, ingredientes, preco, receitaID , pizzayolloID) VALUES (sabor, ingredientes, preco, receitaID , pizzayolloID);
END$

DELIMITER ;

DELIMITER $

CREATE PROCEDURE novoPizzayollo(nome VARCHAR(50), salario FLOAT)
BEGIN
	INSERT INTO Pizzayollos (nome, salario) VALUES (nome, salario);
END$

DELIMITER ;

DELIMITER $

CREATE PROCEDURE novaReceita(instrucoes TEXT, autor VARCHAR(50))
BEGIN
	INSERT INTO Receitas (instrucoes, autor) VALUES (instrucoes, autor);
END$

DELIMITER ;