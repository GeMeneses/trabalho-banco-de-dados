-- Consulta 1: Listar descrição, data e custo das manutenções
select descricao, dataManutencao, custo from manutencao;

-- Consulta 2: Valor total arrecadado pela locadora (pagamentos pagos)
select sum(valorTotal) as totalArrecadado from pagamento where estado = 'Pago';

-- Consulta 3: Modelo, marca e número de vezes que cada veículo foi alugado
select v.modelo, v.marca, count(lv.idveiculo) as quantidade_locacoes
from veiculo v
join locacaoveiculo lv on v.idveiculo = lv.idveiculo
group by v.idveiculo, v.modelo, v.marca
order by quantidade_locacoes desc;

-- Consulta 4: Nome dos clientes com pagamentos pendentes e valor devido
select c.nome, sum(p.valorTotal) as valorDevido
from cliente c
join locacao l on c.idcliente = l.idCliente
join pagamento p on l.idPagamento = p.idPagamento
where p.estado = 'Pendente'
group by c.nome
order by c.nome asc;
