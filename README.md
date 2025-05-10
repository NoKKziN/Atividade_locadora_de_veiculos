# Atividade locadora de veiculos
# 📋 Sistema de Locadora de Veículos

Este projeto consiste na modelagem e implementação de um banco de dados relacional para a gestão de uma **locadora de veículos** (carros e motos). O sistema visa controlar informações sobre **clientes**, **veículos**, **locações**, **pagamentos** e **manutenções**.

---

## 🛠️ Tecnologias utilizadas

- PostgreSQL
- SQL (DDL & DML)

---

## 🗂️ Modelagem do Banco de Dados

O banco de dados é composto pelas seguintes **5 tabelas principais**:

| Tabela | Descrição |
|--------|-----------|
| **clientes** | Cadastro de clientes |
| **veiculos** | Cadastro de carros e motos |
| **locacoes** | Registro de locações realizadas |
| **pagamentos** | Controle de pagamentos de locações |
| **manutencoes** | Controle de manutenções dos veículos |

---

## 📊 Modelos do Banco de Dados

### 🖼️ Modelo Conceitual

[Modelo Lógico](https://raw.githubusercontent.com/NoKKziN/Imagens/Modelos/Modelo_conceitual.png)

---

### 🖼️ Modelo Lógico


[Modelo Lógico](https://raw.githubusercontent.com/NoKKziN/Imagens/Modelos/Modelo_logica.png)

---

## 📋 Regras de Negócio Aplicadas

- Um veículo pode ter status: **'disponível'**, **'alugado'** ou **'manutenção'**
- Exclusão automática de **clientes sem locações** (isolados)
- Exclusão de **manutenções** com custo inferior a **R$150** realizadas antes de **01/03/2025**  
*(Regra de negócio para descartar serviços de baixo impacto e antigos)*

---

## 👨‍💻 Autor

> **Vinicius De Andrade Paz**  
> Estudante do 3º período de Engenharia de Software  
> Faculdade Santo Agostinho

