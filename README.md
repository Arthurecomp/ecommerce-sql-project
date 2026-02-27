#  E-commerce SQL Database Project

##  Sobre o Projeto

Este projeto consiste na modelagem e implementação de um banco de dados relacional para um sistema de E-commerce.

O objetivo foi aplicar conceitos fundamentais de Banco de Dados, incluindo:

- Modelagem relacional
- Criação de tabelas com chaves primárias e estrangeiras
- Relacionamentos 1:N e N:N
- Especialização (Pessoa Física / Pessoa Jurídica)
- Consultas analíticas com SQL

---

##  Estrutura do Banco

O banco é composto pelas seguintes entidades principais:

- `clients`
- `orders`
- `product`
- `payments`
- `productStorage`
- `supplier`
- `seller`

###  Principais Relacionamentos

- Um cliente pode realizar vários pedidos (1:N)
- Um pedido pode ter múltiplos pagamentos
- Um produto pode ter múltiplos fornecedores
- Controle de estoque através de `productStorage`

---

##  Tecnologias Utilizadas

- MySQL
- SQL (DDL e DML)
- Git
- GitHub

---


##  Conceitos aplicados

- JOIN
- GROUP BY
- HAVING
- ORDER BY
- Subqueries
- Agregações (COUNT, SUM)
- Modelagem Relacional


##  Objetivo do Projeto

* Consolidar conhecimentos em SQL e modelagem de dados, simulando um cenário real de E-commerce e realizando análises que seriam úteis para decisões de negócio.

