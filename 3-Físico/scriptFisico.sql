CREATE TABLE PROPRIETARIO (
    cpf VARCHAR(11) PRIMARY KEY NOT NULL,
    nome VARCHAR(100) NOT NULL,
    endereco VARCHAR(100) NOT NULL,
    bairro VARCHAR(50) NOT NULL,
    cidade VARCHAR(50) NOT NULL,
    estado VARCHAR(2) NOT NULL,
    telefones VARCHAR(50) NOT NULL,
    sexo CHAR(1) NOT NULL,
    dataNascimento DATE NOT NULL,
    idade INT NOT NULL
);

CREATE TABLE MODELO (
    idModelo VARCHAR(6) PRIMARY KEY NOT NULL,
    nomeModelo VARCHAR(50) NOT NULL
);

CREATE TABLE CATEGORIA (
    idCategoria VARCHAR(2) PRIMARY KEY NOT NULL,
    nomeCategoria VARCHAR(50) NOT NULL
);

CREATE TABLE VEICULO (
    placa VARCHAR(7) PRIMARY KEY NOT NULL,
    chassi VARCHAR(17) NOT NULL,
    corPredominante VARCHAR(30) NOT NULL,
    modelo VARCHAR(6) NOT NULL,
    categoria VARCHAR(2) NOT NULL,
    anoFabricacao INT NOT NULL,
    cpfProprietario VARCHAR(11) NOT NULL,
    FOREIGN KEY (idModelo) REFERENCES MODELO(idModelo),
    FOREIGN KEY (idCategoria) REFERENCES CATEGORIA(idCategoria),
    FOREIGN KEY (cpfProprietario) REFERENCES PROPRIETARIO(cpf)
);

CREATE TABLE TIPO_DE_INFRACAO (
    idTipo INT PRIMARY KEY NOT NULL,
    descricao VARCHAR(100) NOT NULL,
    valor DECIMAL(10, 2) NOT NULL
);

CREATE TABLE LOCAL (
    latitude DECIMAL(9, 6) NOT NULL,
    longitude DECIMAL(9, 6) NOT NULL,
    velocidadePermitida INT,
    PRIMARY KEY (latitude, longitude)
);

CREATE TABLE AGENTE_DE_TRANSITO (
    matricula INT PRIMARY KEY NOT NULL,
    nome VARCHAR(100) NOT NULL,
    dataContratacao DATE NOT NULL,
    tempoServiço INT NOT NULL
);

CREATE TABLE INFRACAO (
    idInfração INT PRIMARY KEY NOT NULL,
    placaVeiculo CHAR(7),
    dataHora TIMESTAMP,
    tipoInfracao INT,
    latitude DECIMAL(9, 6),
    longitude DECIMAL(9, 6),
    velocidadeAferida INT,
    matriculaAgente INT,
    FOREIGN KEY (placaVeiculo) REFERENCES VEICULO(placa),
    FOREIGN KEY (idTipo) REFERENCES TIPO_DE_INFRACAO(idTipo),
    FOREIGN KEY (latitude, Longitude) REFERENCES LOCAL(latitude, longitude),
    FOREIGN KEY (matriculaAgente) REFERENCES AGENTE_DE_TRANSITO(matricula)
);

