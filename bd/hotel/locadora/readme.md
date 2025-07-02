bd/hotel/locadora/readme.md

Este repositório contém o trabalho de Banco de Dados dividido em duas etapas principais:

### 1ª Etapa – Modelagem (Rede de Hotéis)

- Criação do Modelo Entidade-Relacionamento (MER) com base nas regras de negócio da Rede de Hotéis.
- Contém as entidades, atributos, relacionamentos, cardinalidades, chaves primárias e estrangeiras conforme solicitado.
- Pasta: `hotel/`

### 2ª Etapa – Implementação (Locadora de Veículos)

- Implementação do Modelo Relacional para o banco de dados da Locadora de Veículos.
- Criação do banco e das tabelas no MySQL, com todos os campos `NOT NULL`.
- Scripts para popular o banco com dados fictícios.
- Consultas SQL conforme os requisitos do trabalho (manutenções, valor arrecadado, aluguéis e pagamentos pendentes).
- Pasta: `locadora/`

---

## Estrutura do repositório

bd/
├── hotel/
│ ├── MER_diagrama.png # Diagrama MER da Rede de Hotéis
│
│
└── locadora/
├── create_tables.sql # Script de criação das tabelas no MySQL
├── populando_banco.sql # Script para inserir dados fictícios
├── consultas.sql # Consultas SQL solicitadas no trabalho


yaml
Copiar
Editar
