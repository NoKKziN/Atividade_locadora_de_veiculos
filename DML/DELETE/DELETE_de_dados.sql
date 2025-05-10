-- Excluindo clientes que nunca realizaram locações (clientes isolados)
DELETE FROM clientes
WHERE id_cliente NOT IN (
    SELECT DISTINCT id_cliente FROM locacoes
);

-- Excluindo manutenções com custo inferior a 150 que ocorreram antes de 2025-03-01
DELETE FROM manutencoes
WHERE custo < 150
  AND data_manutencao < '2025-03-01';
