# Projeto de Estudo: Fundamentos de Banco de Dados Relacional

Este projeto foi desenvolvido como uma prática de estudo para reforçar os fundamentos básicos de **bancos de dados relacionais**. O objetivo foi explorar comandos básicos e essenciais do SQL, trabalhando com estruturas de tabelas e seus relacionamentos.

---

## Objetivo do Projeto

O principal objetivo foi:
1. **Reforçar os fundamentos de SQL**.
2. Praticar **criação de tabelas**, manipulação de dados e estruturação de relacionamentos.
3. Explorar os comandos básicos em um cenário prático.

---


## Estrutura do Banco de Dados Relacional

O banco de dados foi modelado para representar cidades, prefeitos e empresas, além de suas relações. Abaixo está a descrição das tabelas criadas, seus campos e os relacionamentos.

---

## **Tabela `cidades`**
Armazena informações sobre as cidades e está relacionada à tabela `estados`.

- **Campos:**
  - `id`: Identificador único da cidade (chave primária, autoincrementada).
  - `nome`: Nome da cidade (não nulo).
  - `estado_id`: Referência ao estado da cidade (chave estrangeira).
  - `area`: Área da cidade (tipo decimal com 10 dígitos e 2 casas decimais).

- **Relacionamentos:**
  - Cada cidade pertence a um único estado (relação muitos-para-um).
  - Relacionada com a tabela `estados` através da coluna `estado_id`.

---

## **Tabela `prefeitos`**
Armazena informações sobre os prefeitos, relacionados às cidades.

- **Campos:**
  - `id`: Identificador único do prefeito (chave primária, autoincrementada).
  - `nome`: Nome do prefeito (não nulo).
  - `cidade_id`: Referência à cidade que o prefeito governa (chave estrangeira).

- **Relacionamentos:**
  - Cada prefeito está associado a uma única cidade (relação um-para-um).
  - Utiliza uma restrição `UNIQUE` na coluna `cidade_id` para garantir que cada cidade tenha apenas um prefeito.

---

## **Tabela `empresas`**
Armazena informações sobre empresas.

- **Campos:**
  - `id`: Identificador único da empresa (chave primária, autoincrementada).
  - `nome`: Nome da empresa (não nulo).
  - `cnpj`: Número do CNPJ da empresa (único, não nulo).

- **Relacionamentos:**
  - Associada a várias cidades por meio da tabela intermediária `empresas_unidades`.

---

## **Tabela `empresas_unidades`**
Tabela intermediária que estabelece o relacionamento **muitos-para-muitos** entre empresas e cidades. Representa as unidades das empresas localizadas em diferentes cidades.

- **Campos:**
  - `empresa_id`: Identificador da empresa (chave estrangeira para a tabela `empresas`).
  - `cidade_id`: Identificador da cidade (chave estrangeira para a tabela `cidades`).
  - `sede`: Indica se a unidade é a sede principal da empresa (1 = sim, 0 = não).

- **Relacionamentos:**
  - Cada empresa pode ter unidades em várias cidades.
  - Cada cidade pode abrigar unidades de várias empresas.

- **Chave Primária Composta:**
  - (`empresa_id`, `cidade_id`): Garante que cada combinação empresa-cidade seja única.

---

## **Tabela `teste`**
Uma tabela auxiliar usada apenas para experimentos.

- **Campos:**
  - `id`: Identificador único da tabela (chave primária, autoincrementada).

---

## Resumo dos Relacionamentos
1. **Um-para-Muitos**:
   - Um estado pode ter muitas cidades (`estados` → `cidades`).
2. **Um-para-Um**:
   - Uma cidade pode ter no máximo um prefeito (`cidades` → `prefeitos`).
3. **Muitos-para-Muitos**:
   - Uma empresa pode estar presente em várias cidades, e uma cidade pode ter várias empresas (`empresas ↔ empresas_unidades ↔ cidades`).

---

## Observações Gerais
- O uso de `CREATE TABLE IF NOT EXISTS` assegura que as tabelas sejam criadas apenas se ainda não existirem.
- As restrições de integridade referencial (`FOREIGN KEY`) garantem a consistência dos dados entre as tabelas relacionadas.
- A tabela `empresas_unidades` possibilita o controle das localizações das empresas e se determinada unidade é a sede principal.

Este design de banco de dados é uma base robusta para representar cenários reais com cidades, prefeitos e empresas, além de suas interações.


# Conclusão
Este projeto foi um exercício prático para reforçar os fundamentos de bancos de dados relacionais. Utilizando comandos básicos como CREATE, INSERT, UPDATE, DELETE, ALTER, SELECT, DROP e TRUNCATE, foi possível modelar um sistema relacional com exemplos próximos de cenários reais. A prática ajudou a consolidar conceitos importantes de SQL, relacionamentos entre tabelas e manipulação de dados.
