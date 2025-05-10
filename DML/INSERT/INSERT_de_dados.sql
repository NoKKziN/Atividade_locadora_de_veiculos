-- Inserções - Clientes

INSERT INTO clientes (nome, email, telefone, endereco) VALUES
('Ana Silva', 'ana.silva@email.com', '11999990001', 'Rua A, 100'),
('Bruno Lima', 'bruno.lima@email.com', '11999990002', 'Rua B, 200'),
('Carla Souza', 'carla.souza@email.com', '11999990003', 'Rua C, 300'),
('Daniel Rocha', 'daniel.rocha@email.com', '11999990004', 'Rua D, 400'),
('Eduarda Pires', 'eduarda.pires@email.com', '11999990005', 'Rua E, 500'),
('Fernando Reis', 'fernando.reis@email.com', '11999990006', 'Rua F, 600'),
('Gabriela Costa', 'gabriela.costa@email.com', '11999990007', 'Rua G, 700'),
('Henrique Alves', 'henrique.alves@email.com', '11999990008', 'Rua H, 800'),
('Isabela Martins', 'isabela.martins@email.com', '11999990009', 'Rua I, 900'),
('João Mendes', 'joao.mendes@email.com', '11999990010', 'Rua J, 1000');

-- Inserções - Veiculos

INSERT INTO veiculos (tipo, marca, modelo, placa, ano, status) VALUES
('carro', 'Toyota', 'Corolla', 'ABC1A11', 2020, 'disponivel'),
('moto', 'Honda', 'CG 160', 'DEF2B22', 2022, 'disponivel'),
('carro', 'Ford', 'Ka', 'GHI3C33', 2019, 'disponivel'),
('moto', 'Yamaha', 'Fazer 250', 'JKL4D44', 2021, 'manutencao'),
('carro', 'Chevrolet', 'Onix', 'MNO5E55', 2023, 'alugado'),
('moto', 'Suzuki', 'Yes 125', 'PQR6F66', 2018, 'disponivel'),
('carro', 'Volkswagen', 'Gol', 'STU7G77', 2017, 'disponivel'),
('moto', 'Kawasaki', 'Ninja 400', 'VWX8H88', 2021, 'disponivel'),
('carro', 'Hyundai', 'HB20', 'YZA9I99', 2020, 'manutencao'),
('carro', 'Renault', 'Sandero', 'BCD0J00', 2022, 'disponivel');

-- Inserções - Locacoes

INSERT INTO locacoes (data_inicio, data_fim, valor_total, id_cliente, id_veiculo) VALUES
('2025-05-01', '2025-05-05', 500.00, 1, 1),
('2025-05-02', '2025-05-06', 200.00, 2, 2),
('2025-05-03', '2025-05-07', 450.00, 3, 3),
('2025-05-04', '2025-05-10', 700.00, 4, 5),
('2025-05-05', '2025-05-08', 250.00, 5, 6),
('2025-05-06', '2025-05-09', 350.00, 6, 7),
('2025-05-07', '2025-05-12', 800.00, 7, 8),
('2025-05-08', '2025-05-15', 600.00, 8, 9),
('2025-05-09', '2025-05-11', 300.00, 9, 10),
('2025-05-10', '2025-05-13', 550.00, 10, 4);

-- Inserções - Pagamentos

INSERT INTO pagamentos (id_locacao, data_pagamento, valor_pago, metodo_pagamento) VALUES
(1, '2025-05-01', 500.00, 'cartao'),
(2, '2025-05-02', 200.00, 'pix'),
(3, '2025-05-03', 450.00, 'dinheiro'),
(4, '2025-05-04', 400.00, 'cartao'),
(4, '2025-05-05', 300.00, 'pix'),
(5, '2025-05-05', 250.00, 'dinheiro'),
(6, '2025-05-06', 350.00, 'pix'),
(7, '2025-05-07', 800.00, 'cartao'),
(8, '2025-05-08', 600.00, 'dinheiro'),
(9, '2025-05-09', 300.00, 'pix');

-- Inserções - Manutencoes

INSERT INTO manutencoes (id_veiculo, descricao, data_manutencao, custo) VALUES
(4, 'Troca de óleo e filtro', '2025-04-01', 150.00),
(9, 'Revisão completa', '2025-04-02', 800.00),
(4, 'Troca de pneus', '2025-03-10', 600.00),
(6, 'Reparo nos freios', '2025-03-15', 300.00),
(7, 'Troca de bateria', '2025-02-20', 400.00),
(2, 'Troca de corrente', '2025-01-25', 200.00),
(3, 'Alinhamento e balanceamento', '2025-01-30', 120.00),
(8, 'Substituição de pastilhas de freio', '2025-02-05', 250.00),
(9, 'Lavagem técnica', '2025-02-15', 100.00),
(1, 'Troca de faróis', '2025-03-05', 350.00);