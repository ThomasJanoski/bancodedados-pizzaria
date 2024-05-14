SELECT 
	sabor AS Pizza, 
	Pizzayollos.nome AS Pizzayollo 
FROM Pizzas
	INNER JOIN Pizzayollos 
ON Pizzas.pizzayolloID = Pizzayollos.ID;

SELECT sabor as Pizza, ingredientes FROM Pizzas;

SELECT 
	sabor AS Pizza, 
	Pizzayollos.nome AS Pizzayollo, 
	Receitas.instrucoes AS Instruções 
FROM Pizzas 
	INNER JOIN pizzayollos
ON Pizzas.pizzayolloID = Pizzayollos.ID
	INNER JOIN Receitas
ON Pizzas.receitaID = Receitas.ID;