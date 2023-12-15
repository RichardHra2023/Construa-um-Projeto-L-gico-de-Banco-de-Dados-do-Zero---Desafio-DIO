-- Quantas vezes houve faturamento por cada cliente?
select concat(Pnome, ' ', Sobrenome) as Nome_completo, count(*) as Quantidade
from Cliente c
join Veiculo v on c.idCliente = v.ClienteIdCliente
join Faturamento f on v.Placa = f.VeiculoPlaca
group by Nome_completo;

-- Quantos faturamentos foram feitos que não haviam sido cancelados?
select concat(Pnome, ' ', Sobrenome) as Nome_completo, count(*) as Quantidade
from Cliente c
join Veiculo v on c.idCliente = v.ClienteIdCliente
join Faturamento f on v.Placa = f.VeiculoPlaca
where StatusFaturamento != 'Cancelado'
group by Nome_completo;

-- Qual produto tem mais em estoque?
select p.NomeProduto, Quantidade
from Tem_Estoque e
join Produtos p on e.ProdutoIdProduto = p.idProdutos
order by Quantidade desc;

-- Quantos funcionários ganham acima de R$2000?
select concat(Pnome, ' ', Sobrenome) as Nome_completo, Salario
from Funcionario f
where Salario > 2000;

-- Qual funcionário tem mais serviços agendados?
select concat(Pnome, ' ', Sobrenome) as Nome_completo, count(*) Servicos_agendados
from Funcionario f
join Tem_Agenda a on f.idFuncionário = a.FuncionarioIdFuncionario
group by a.FuncionarioIdFuncionario having Servicos_agendados > 1;