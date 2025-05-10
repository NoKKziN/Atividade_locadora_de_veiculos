-- Listando locações com valor_total entre 300 e 700 ou que terminaram após 2025-05-08
SELECT * FROM locacoes
WHERE (valor_total BETWEEN 300 AND 700 OR data_fim > '2025-05-08');

-- Mostrando veículos que NÃO estão disponíveis e são do ano > 2019
SELECT * FROM veiculos
WHERE NOT status = 'disponivel'
  AND ano > 2019;

-- Buscando clientes cujo nome começa com 'A' ou 'B'
SELECT * FROM clientes
WHERE nome LIKE 'A%' OR nome LIKE 'B%';

-- Veículos com marca IN (Toyota, Ford, Chevrolet)
SELECT * FROM veiculos
WHERE marca IN ('Toyota', 'Ford', 'Chevrolet');

-- Mostrando locações com valor_total diferente de 500
SELECT * FROM locacoes
WHERE valor_total <> 500;

-- Trazer o nome do cliente, modelo do veículo e valor da locação
SELECT c.nome, v.modelo, l.valor_total
FROM locacoes l
JOIN clientes c ON l.id_cliente = c.id_cliente
JOIN veiculos v ON l.id_veiculo = v.id_veiculo;

-- Quantidade de locações por cliente
SELECT c.nome, COUNT(l.id_locacao) AS total_locacoes
FROM clientes c
JOIN locacoes l ON c.id_cliente = l.id_cliente
GROUP BY c.nome
ORDER BY total_locacoes DESC;

-- Soma total de pagamentos por método de pagamento
SELECT metodo_pagamento, SUM(valor_pago) AS total_recebido
FROM pagamentos
GROUP BY metodo_pagamento
ORDER BY total_recebido DESC;

-- Valor máximo, mínimo e média das locações
SELECT 
  MAX(valor_total) AS maior_locacao,
  MIN(valor_total) AS menor_locacao,
  AVG(valor_total) AS media_locacao
FROM locacoes;

-- Valor médio de custo de manutenção por veículo
SELECT v.marca, v.modelo, AVG(m.custo) AS media_custo_manutencao
FROM manutencoes m
JOIN veiculos v ON m.id_veiculo = v.id_veiculo
GROUP BY v.marca, v.modelo
ORDER BY media_custo_manutencao DESC;
