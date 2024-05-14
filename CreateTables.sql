CREATE TABLE Receitas (
	ID INT PRIMARY KEY AUTO_INCREMENT,
    instrucoes TEXT,
    autor VARCHAR(50)
); 

CREATE TABLE Pizzayollos (
	ID INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(50) NOT NULL,
    salario FLOAT
); 

CREATE TABLE Pizzas (
	ID INT PRIMARY KEY AUTO_INCREMENT,
    ingredientes TEXT,
    sabor VARCHAR(50) NOT NULL,
    preco FLOAT NOT NULL,
    descricao TEXT DEFAULT (CONCAT('Sem descrição.')),
    tamanho VARCHAR(20) DEFAULT "Médio",
    tamanhoEmbalagem VARCHAR(20) DEFAULT "30x30x5cm",
    materialEmbalagem VARCHAR(50) DEFAULT "Papelão",
    precoEmbalagem FLOAT DEFAULT 1.50,
    receitaID INT NOT NULL,
    pizzayolloID INT NOT NULL,
    
    FOREIGN KEY (receitaID) REFERENCES Receitas(ID),
    FOREIGN KEY (pizzayolloID) REFERENCES Pizzayollos(ID)
); 