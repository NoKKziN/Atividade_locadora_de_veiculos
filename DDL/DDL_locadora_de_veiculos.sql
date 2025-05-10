-- Criação das tabelas (DDl)

-- 1. Tabela: Clientes

CREATE TABLE clientes (
    id_cliente SERIAL PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    email VARCHAR(100) NOT NULL UNIQUE,
    telefone VARCHAR(20),
    endereco VARCHAR(150)
);

-- 2. Tabela: Veiculos

CREATE TABLE veiculos (
    id_veiculo SERIAL PRIMARY KEY,
    tipo VARCHAR(10) NOT NULL CHECK (tipo IN ('carro', 'moto')),
    marca VARCHAR(50) NOT NULL,
    modelo VARCHAR(50) NOT NULL,
    placa VARCHAR(10) NOT NULL UNIQUE,
    ano INT NOT NULL CHECK (ano >= 1990 AND ano <= 2030),
    status VARCHAR(15) NOT NULL CHECK (status IN ('disponivel', 'alugado', 'manutencao')) DEFAULT 'disponivel'
);

-- 3. Tabela: Locacoes

CREATE TABLE locacoes (
    id_locacao SERIAL PRIMARY KEY,
    data_inicio DATE NOT NULL,
    data_fim DATE NOT NULL,
    valor_total DECIMAL(10,2) NOT NULL CHECK (valor_total >= 0),
    id_cliente INT NOT NULL,
    id_veiculo INT NOT NULL
);

-- 4. Tabela: Pagamentos

CREATE TABLE pagamentos (
    id_pagamento SERIAL PRIMARY KEY,
    id_locacao INT NOT NULL,
    data_pagamento DATE NOT NULL,
    valor_pago DECIMAL(10,2) NOT NULL CHECK (valor_pago > 0),
    metodo_pagamento VARCHAR(20) NOT NULL CHECK (metodo_pagamento IN ('dinheiro', 'cartao', 'pix'))
);

-- 5. Tabela: Manutencoes

CREATE TABLE manutencoes (
    id_manutencao SERIAL PRIMARY KEY,
    id_veiculo INT NOT NULL,
    descricao VARCHAR(200) NOT NULL,
    data_manutencao DATE NOT NULL,
    custo DECIMAL(10,2) NOT NULL CHECK (custo >= 0)
);

-- 6. Adicionando Foreign Keys

ALTER TABLE locacoes
ADD CONSTRAINT fk_locacoes_cliente
FOREIGN KEY (id_cliente) REFERENCES clientes(id_cliente);

ALTER TABLE locacoes
ADD CONSTRAINT fk_locacoes_veiculo
FOREIGN KEY (id_veiculo) REFERENCES veiculos(id_veiculo);

ALTER TABLE pagamentos
ADD CONSTRAINT fk_pagamentos_locacao
FOREIGN KEY (id_locacao) REFERENCES locacoes(id_locacao);

ALTER TABLE manutencoes
ADD CONSTRAINT fk_manutencoes_veiculo
FOREIGN KEY (id_veiculo) REFERENCES veiculos(id_veiculo);
 