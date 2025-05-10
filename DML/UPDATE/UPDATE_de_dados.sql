-- Aumentando o valor_total em 10% para locações que terminaram antes de 2025-05-08 e cujo valor total é menor que 500
UPDATE locacoes
SET valor_total = valor_total * 1.10
WHERE data_fim < '2025-05-08'
  AND valor_total < 500;

-- Atualizando status de veículos que passaram por manutenção depois de 2025-04-01 para 'disponivel'
UPDATE veiculos
SET status = 'disponivel'
WHERE id_veiculo IN (
    SELECT id_veiculo
    FROM manutencoes
    WHERE data_manutencao > '2025-04-01'
);
