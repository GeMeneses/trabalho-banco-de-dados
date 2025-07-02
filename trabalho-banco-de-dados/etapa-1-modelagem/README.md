

# Etapa 1 – Modelagem (Rede de Hotéis)

## Objetivo

Modelar o banco de dados de uma Rede de Hotéis com base nas regras de negócio fornecidas, utilizando o Modelo Entidade-Relacionamento (MER). O modelo deve conter:

- Entidades
- Atributos
- Relacionamentos
- Cardinalidades
- Chaves primárias
- Chaves estrangeiras

##  Regras de Negócio

A Rede de Hotéis precisa controlar os dados de:

- Funcionários (CPF, nome, telefone, e-mail, login e senha)
- Unidades (Hotéis): identificação, nome, categoria, telefone, e-mail, endereço completo
- Quartos: identificação, número de leitos, tipo (standard, luxo ou suíte), preço da diária, status
- Hóspedes: CPF, nome, telefone, e-mail, endereço completo
- Reservas: identificação, data de entrada, data de saída, status
- Pagamentos: identificação, forma de pagamento, data, valor total, status

### Relações

- Um hotel possui um ou vários quartos.
- Um ou vários funcionários trabalham em um hotel.
- Um funcionário realiza uma ou várias reservas.
- Um ou vários quartos fazem parte de uma ou várias reservas.
- Um hóspede pode fazer uma ou várias reservas.
- Uma reserva gera um pagamento.

##  Regras 

- Somente as entidades e atributos descritos devem ser considerados.
- Entidades associativas devem seguir o modelo da Figura 25 do material didático.
- Em caso de cardinalidade (1,1), a chave estrangeira deve ser atribuída à entidade com mais chaves estrangeiras.



