#Criação do banco de dados:
create database locadoraveiculos;

#Criação das tabelas:
create table cliente(
idcliente int primary key,
CPF varchar(20) not null,
nome varchar(50) not null,
telefone varchar(20) not null,
email varchar(50) not null, 
endereco varchar(100) not null
) character set utf8mb4 collate utf8mb4_general_ci;

create table veiculo(
idveiculo int primary key,
modelo varchar(50) not null,
marca varchar(50) not null,
ano int not null,
placa varchar(10) not null, 
valorDiaria decimal(7,2) not null, 
estado enum('Disponível','Alugado','Manutenção') not null
) character set utf8mb4 collate utf8mb4_general_ci;

create table manutencao(
idManutencao int primary key,
idVeiculo int not null,
descricao varchar(100) not null,  
dataManutencao date not null, 
custo decimal(7,2) not null,
foreign key (idVeiculo) references veiculo(idVeiculo)
) character set utf8mb4 collate utf8mb4_general_ci;

create table pagamento(
idPagamento int primary key,
forma enum('Cartão','Pix','Dinheiro') not null, 
dataPagamento date not null, 
valorTotal decimal(7,2) not null,
estado enum('Pago','Pendente')
)character set utf8mb4 collate utf8mb4_general_ci;

create table locacao(
idLocacao int primary key, 
idCliente int not null,
idPagamento int not null,
dataInicio date not null, 
dataFim date not null,
foreign key (idCliente) references cliente(idCliente),
foreign key (idPagamento) references pagamento(idPagamento)
) character set utf8mb4 collate utf8mb4_general_ci;

create table locacaoveiculo(
idLocacao int not null, 
idVeiculo int not null,
primary key(idLocacao, idVeiculo),
foreign key (idLocacao) references locacao(idLocacao),
foreign key (idVeiculo) references veiculo(idVeiculo)
)  character set utf8mb4 collate utf8mb4_general_ci;









