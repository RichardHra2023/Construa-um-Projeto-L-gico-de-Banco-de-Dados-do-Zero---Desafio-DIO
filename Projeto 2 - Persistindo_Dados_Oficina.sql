-- CLIENTE: Pnome, Sobrenome, CPF, Endereco, CEP, Cidade, Estado, DtNascimento, Email, Telefone
INSERT INTO Cliente (Pnome, Sobrenome, CPF, Endereco, CEP, Cidade, Estado, DtNascimento, Email, Telefone) VALUES 
	('Priscila','Ayla Heloise Lima','40348750030','Vila Karina, 125','58091090','João Pessoa','PB','1951-09-03','priscilaaylalima@policiapenal.com','83983621899'),
    ('Melissa','Catarina Rosa Jesus','44183558123','Alameda Ocotea, 946','86055788','Londrina','PR','1977-09-02','melissacatarinajesus@fedato.com.br','43999968274'),
    ('Joaquim','Lucca da Costa','31134949316','Rua Bolívia, 431','65911165','Imperatriz','MA','1952-03-15','joaquim_dacosta@mx.labinal.com','98999108654'),
    ('Fernanda','Beatriz Regina Viana','40519860985','Rua Alcemir de Souza Mota, 726','69305295','Boa Vista','RR','1998-02-05','fernandabeatrizviana@patriciagrillo.adv.br','95995753314'),
	('André','Noah André Pinto','73675960803','Avenida Santos Dumont, 738','77440340','Gurupi','TO','1954-06-17','andrenoahpinto@detorsul.com','63994928828'),
    ('Bryan','Manuel Giovanni Rodrigues','03536307990','Rua Valdemar Muniz, 865','45603230','Itabuna','BA','2000-08-01','bryan_manuel_rodrigues@alphagraphics.com.br','73985480088');

-- FORMA DE PAGAMENTO: FormaPagamento
INSERT INTO Forma_de_pagamento (FormaPagamento) VALUES 
	('PIX'),
    ('Dinheiro'),
    ('Boleto'),
    ('Cartão de Débito'),
	('Cartão de Crédito'),
    ('Dois Cartões de Crédito');
    
-- FORNECEDOR: RazaoSocial, NomeFantasia, CNPJ, Email, Telefone, Endereco, CEP, Cidade, Estado
INSERT INTO Fornecedor (RazaoSocial, NomeFantasia, CNPJ, Email, Telefone, Endereco, CEP, Cidade, Estado) VALUES 
	('Jéssica e Leonardo Comercio de Peças Ltda','Peças da Jessica','40533897000133','compras@jessicacomerciodepecas.com.br','7139616506','Rua das Patativas, 753','41720100','Salvador','BA'),
    ('Luiz e Nelson Eletrônica ME',null,'58976342000121','auditoria@luizenelsoneletronicame.com.br','7137738655','Rua Rio Juruá, 18','41620180','Salvador','BA'),
    ('Cauã e Rayssa Comércio de Peças de Automóveis ME','Peçaria','31018984000161','desenvolvimento@cauaerayssame.com.br','1136168840','Praça Eduardo Riedel, 469','07082051','Guarulhos','SP'),
    ('Gabriel e Giovana Comércio de Automóveis ME','Arrancadão','27483216000101','suporte@arracadaoautomoveisme.com.br','14997755342','Rua Plínio Camargo, 190','17021020','Bauru','SP'),
	('Breno e Cláudia Ferragens Ltda','Ferragens do Breno','65849723000105','cobranca@brenoferragensltda.com.br','4738513334','Rua Miguel Comandoli, 304','88357125','Brusque','SC'),
    ('André e Rita Comércio Automóveis Ltda','Relâmpago','90731030000160','auditoria@andreerita.com.br','49996282113','Avenida Osvaldo José Reiser, 263','88372286','Navegantes','SC');
    
-- LOCALIZAÇÃO DA LOJA: Telefone, Endereco, CEP, Cidade, Estado
INSERT INTO Localizacao_Loja (Telefone, Endereco, CEP, Cidade, Estado) VALUES 
	('7128029547','Travessa Manoel Jovino, 884','41402510','Salvador','BA'),
    ('1136144626','Praça Antônio Hirohisa Ishi, 935','03589053','São Paulo','SP'),
    ('4839225938','Rua Manoel Custódio Braga, 101','88708630','Tubarão','SC');

-- PRODUTOS: NomeProduto, Marca, ValorProduto, Descricao
INSERT INTO Produtos (NomeProduto, Marca, ValorProduto, Descricao) VALUES 
	('Retentor','Vedatec',15.00,'Vedação com anel externo metálico'),
    ('Kit de Embreagem Renault Laguna','Rodaplis',420.00,'Kit de embreagem para o veículo da marca Renault'),
    ('Pastilha de Freio Traseiro GM Celta 2000','Bosch',50.00,'Kit de pastilha de freio traseiro para veículos da Marca GM'),
    ('Pastilha de Freio Toyota Corolla 2011','Bosch',260.00,'Freio dianteiro para veículos da Marca Toyota'),
	('Capa de Banco','Vip Capas',50.00,'Capa impermeável para banco feita em corino'),
    ('Pneu Aro 16 235/60R16','Pirelli',749.90,'Pneu para ser usado em SUVs e Picape');
    
-- VEICULO: Placa, Marca, Modelo, AnoFabricacao, Cor, ClienteIdCliente
INSERT INTO Veiculo (Placa, Marca, Modelo, AnoFabricacao, Cor, ClienteIdCliente) VALUES 
	('MGF5858','TAC','Stark 2.3 4WD 127cv TDI Diesel 3p','2010','Amarelo','1'),
    ('MHS6698','Toyota','Corolla Fielder SW SE-G 1.8 Flex 16V Aut','2008','Branco','3'),
    ('JKZ9392','Renault','Laguna rxe 2.0 16 válvulas','2001','Cinza','6'),
    ('JPG9509','Agrale','MARRU','2008','Amarelo','6'),
	('FJJ3821','Nissan','MARCH SV 1.6 16V FlexStart 5p Aut.','2017','Marrom','2'),
    ('EOH7020','Jeep','Wrangler 4.0/Sport 4.0','1992','Preto','5');
    
-- SERVIÇO: Nome, Descricao, ValorServico
INSERT INTO Servico (Nome, Descricao, ValorServico) VALUES 
	('Manutenção de embreagem','Retirada, colocação, conferência se está tudo correto', 200),
    ('Revisão dos componentes de freio','Revisão nas plastilhas e no jogo de freio, troca e conferência',150),
    ('Checagem do nível de água no radiador','Simples checagem de nível de água no radiador e colocação de aditivo se necessário',10),
    ('Alinhamento e balanceamento','Alinhamento e balaceamento do jogo de pneus com possível troca de pneu', 150),
	('Revisão geral','Revisão básica para levantamento de peças que possam necessitar trocar',80);
    
-- FUNCIONÁRIO: Pnome, Sobrenome, CPF, DtNascimento, DtContratacao, Demissao, Salario, Email, Telefone, Endereco, CEP, Cidade, Estado, LojaAtuacao
INSERT INTO Funcionario (Pnome, Sobrenome, CPF, DtNascimento, DtContratacao, Demissao, Salario, Email, Telefone, Endereco, CEP, Cidade, Estado, LojaAtuacao) VALUES 
	('Hadassa','Stefany Mariah da Mota','24675461522','1993-07-09','2020-11-17',false,1600,'hadassa-damota94@alesalvatori.com','71981113866','Rua da Catuaba, 261','40726165','Salvador','BA',1),
    ('Yuri','Heitor Victor Pires','00026012570','1981-06-12','2008-03-24',false,2650,'yuri.heitor.pires@parker.com','71985452084','1ª Travessa 8 de Novembro, 963','41290620','Salvador','BA','1'),
    ('Fernando','Vitor Duarte','36151470818','1946-09-03','2000-01-25',true,850,'fernando_vitor_duarte@moppe.com.br','11983083284','Viela dos Ingleses, 625','01028010','São Paulo','SP','2'),
    ('Vitor','Miguel Costa','94624682815','1983-03-14','2009-04-01',false,2300,'vitor_miguel_costa@ynail.com.br','11999961969','Rua Frei Tarcísio, 999','02118020','São Paulo','SP','2'),
    ('Sebastião','Leonardo Martins','64363382929','1986-01-04','2015-08-16',false,2190,'sebastiaoleonardomartins@lojabichopapao.com.br','48985679039','Rua São João, 498','88708001','Tubarão','SC','3'),
    ('Cristiane','Bárbara Nunes','34432478900','1969-02-20','2003-07-31',true,1300,'cristianebarbaranunes@vitaonline.com.br','48989144758','Rua Salete Moraes Porto, 348','88706081','Tubarão','SC','3');

-- AGENDA: FuncionarioIdFuncionario, ServicoIdServico, Agenda, Horas_Servico
INSERT INTO Tem_Agenda (FuncionarioIdFuncionario, ServicoIdServico, Agenda, Horas_Servico) VALUES 
	(2,2,'2023-08-30 10:00:00','02:00:00'),
    (5,1,'2023-08-16 13:30:00','05:00:00'),
    (5,2,'2023-08-05 14:00:00','02:00:00'),
    (4,5,'2023-09-04 09:45:00','01:30:00'),
    (1,5,'2023-08-04 15:30:00','01:30:00'),
    (1,3,'2023-08-27 11:30:00','00:15:00');

-- ESTOQUE: ProdutoIdProduto, FornecedorIdFornecedor, EstoqueLoja, Quantidade, DtEntrada
INSERT INTO Tem_Estoque (ProdutoIdProduto, FornecedorIdFornecedor, EstoqueLoja, Quantidade, DtEntrada) VALUES 
	(5,3,1,10,'2023-01-17'),
    (6,2,1,12,'2023-04-08'),
    (2,5,3,2,'2023-08-25'),
    (5,3,2,5,'2023-08-31'),
    (4,1,2,1,'2023-08-15');

-- FATURAMENTO: ServicoIdServico, ProdutoIdProduto, VeiculoPlaca, DtFaturamento, ValorTotal, PagamentoIdPagamento, StatusFaturamento ENUM('Aguardando Pagamento', 'Aguardando Conserto', 'Pago', 'Cancelado'), Detalhamento
INSERT INTO Faturamento (ServicoIdServico, ProdutoIdProduto, VeiculoPlaca, DtFaturamento, ValorTotal, PagamentoIdPagamento, StatusFaturamento, Detalhamento) VALUES 
	(null,5,'MGF5858','2023-07-30',100,2,'Pago','Simples compra de capas de banco'),
    (2,6,'EOH7020','2023-08-30',1649.8,6,'Pago','Feito alinhamento e balanceamento, necessário a troca dos pneus dianteiros'),
    (3,1,'MGF5858','2023-08-30',0.00,1,'Cancelado','Cliente desistiu do serviço, optou apenas pelo alinhamento e balanceamento'),
    ('3',null,'JPG9509','2023-08-27',10,3,'Pago','Simples checagem de nível e inclusão de aditivo'),
    ('1','5','JPG9509','2023-09-02',95,4,'Aguardando Pagamento','Troca de retentor após revisão do veículo');
