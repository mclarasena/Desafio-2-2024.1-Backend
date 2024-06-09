-- Proprietários
INSERT INTO PROPRIETARIO (cpf, nome, endereco, bairro, cidade, estado, telefones, sexo, dataNascimento, idade)
VALUES 
('12345678901', 'Julia Silva', 'Rua A, 123', 'Centro', 'São Paulo', 'SP', '1111-1111', 'M', '1980-01-01', 44),
('98765432109', 'Mariana Oliva', 'Av. B, 456', 'Jardins', 'Rio de Janeiro', 'RJ', '2222-2222', 'F', '1975-05-15', 49),
('45678912300', 'Carol Andrade', 'Rua C, 789', 'Bela Vista', 'Belo Horizonte', 'MG', '3333-3333', 'M', '1990-07-07', 33),
('78912345600', 'Ana Maria Senna', 'Rua D, 101', 'Copacabana', 'Rio de Janeiro', 'RJ', '4444-4444', 'F', '1985-03-22', 39),
('32165498700', 'Saulo Rocha', 'Av. E, 202', 'Centro', 'São Paulo', 'SP', '5555-5555', 'M', '1970-11-11', 53);

-- Modelos
INSERT INTO MODELO (idModelo, nomeModelo)
VALUES 
('000001', 'GOL MI'),
('000002', 'GOL 1.8'),
('000003', 'UNO CS'),
('000004', 'CIVIC'),
('000005', 'COROLLA');

-- Categorias
INSERT INTO CATEGORIA (idCategoria, nomeCategoria)
VALUES 
('01', 'AUTOMÓVEL'),
('02', 'MOTOCICLETA'),
('03', 'CAMINHÃO'),
('04', 'ÔNIBUS'),
('05', 'VAN');

-- Veículos
INSERT INTO VEICULO (placa, chassi, corPredominante, idModelo, idCategoria, anoFabricacao, cpfProprietario)
VALUES 
('ABC1234', '9BWZZZ377VT004251', 'Preto', '000001', '01', 2015, '12345678901'),
('DEF5678', '9BWZZZ377VT004252', 'Branco', '000002', '01', 2018, '98765432109'),
('GHI9012', '9BWZZZ377VT004253', 'Vermelho', '000003', '02', 2020, '45678912300'),
('JKL3456', '9BWZZZ377VT004254', 'Azul', '000004', '01', 2019, '78912345600'),
('MNO7890', '9BWZZZ377VT004255', 'Verde', '000005', '03', 2017, '32165498700');

-- Tipos de Infrações
INSERT INTO TIPO_DE_INFRACAO (idTipo, descricao, valor)
VALUES 
(1, 'AVANÇO DE SINAL VERMELHO', 200.00),
(2, 'PARADA SOBRE A FAIXA DE PEDESTRES', 150.00),
(3, 'EXCESSO DE VELOCIDADE', 300.00),
(4, 'USO DE CELULAR AO VOLANTE', 100.00),
(5, 'ESTACIONAMENTO PROIBIDO', 50.00);

-- Locais
INSERT INTO LOCAL (latitude, longitude, velocidadePermitida)
VALUES 
(-23.550520, -46.633308, 60),
(-22.906847, -43.172896, 80),
(-19.916681, -43.934493, 70),
(-25.428954, -49.267137, 50),
(-15.794229, -47.882166, 60);

-- Agentes de Trânsito
INSERT INTO AGENTE_DE_TRANSITO (matricula, nome, dataContratacao, tempoServico)
VALUES 
(1001, 'Agente A', '2010-01-01', 168),
(1002, 'Agente B', '2012-03-15', 144),
(1003, 'Agente C', '2015-07-07', 108),
(1004, 'Agente D', '2018-09-21', 72),
(1005, 'Agente E', '2020-11-11', 42);

-- Infrações
INSERT INTO INFRACAO (idInfracao, placaVeiculo, dataHora, idTipo, latitude, longitude, velocidadeAferida, matriculaAgente)
VALUES 
(1, 'ABC1234', '2023-01-01 12:00:00', 1, -23.550520, -46.633308, 70, 1001),
(2, 'DEF5678', '2023-01-02 14:30:00', 2, -22.906847, -43.172896, 0, 1002),
(3, 'GHI9012', '2023-01-03 09:15:00', 3, -19.916681, -43.934493, 90, 1003),
(4, 'JKL3456', '2023-01-04 16:45:00', 4, -25.428954, -49.267137, 0, 1004),
(5, 'MNO7890', '2023-01-05 11:00:00', 5, -15.794229, -47.882166, 0, 1005);
