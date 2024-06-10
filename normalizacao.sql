CREATE TABLE Funcionarios (
    id INT PRIMARY KEY,
    nome VARCHAR(100),
    cpf VARCHAR(11) UNIQUE,
    data_nascimento DATE,
    id_cargo INT,
    id_departamento INT,
    FOREIGN KEY (id_cargo) REFERENCES Cargos(id),
    FOREIGN KEY (id_departamento) REFERENCES Departamentos(id)
);

CREATE TABLE Cargos (
    id INT PRIMARY KEY,
    cargo_nome VARCHAR(100)
);

CREATE TABLE Departamentos (
    id INT PRIMARY KEY,
    departamento_nome VARCHAR(100)
);

INSERT INTO Cargos (id, cargo_nome) VALUES (1, 'Analista');
INSERT INTO Cargos (id, cargo_nome) VALUES (2, 'Gerente');
INSERT INTO Cargos (id, cargo_nome) VALUES (3, 'Assistente');

INSERT INTO Departamentos (id, departamento_nome) VALUES (1, 'TI');
INSERT INTO Departamentos (id, departamento_nome) VALUES (2, 'RH');
INSERT INTO Departamentos (id, departamento_nome) VALUES (3, 'Financeiro');

INSERT INTO Funcionarios (id, nome, cpf, data_nascimento, id_cargo, id_departamento) VALUES (1, 'João Silva', '12345678900', '1980-01-01', 1, 1);
INSERT INTO Funcionarios (id, nome, cpf, data_nascimento, id_cargo, id_departamento) VALUES (2, 'Maria Oliveira', '23456789012', '1985-02-02', 2, 2);
INSERT INTO Funcionarios (id, nome, cpf, data_nascimento, id_cargo, id_departamento) VALUES (3, 'Pedro Souza', '34567890123', '1990-03-03', 1, 1);
INSERT INTO Funcionarios (id, nome, cpf, data_nascimento, id_cargo, id_departamento) VALUES (4, 'Ana Santos', '45678901234', '1995-04-04', 3, 3);
INSERT INTO Funcionarios (id, nome, cpf, data_nascimento, id_cargo, id_departamento) VALUES (5, 'Carlos Pereira', '56789012345', '1988-05-05', 2, 3);

