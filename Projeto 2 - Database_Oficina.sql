create database if not exists Oficina;
use Oficina;

CREATE TABLE Cliente (
    idCliente INT PRIMARY KEY AUTO_INCREMENT,
    Pnome VARCHAR(45) not null,
    Sobrenome VARCHAR(80) not null,
    CPF VARCHAR(11) not null unique,
    Endereco VARCHAR(60) not null,
    CEP VARCHAR(8) not null,
    Cidade VARCHAR(45) not null,
    Estado CHAR(2) not null,
    DtNascimento DATE not null,
    Email VARCHAR(50) not null,
    Telefone VARCHAR(11) not null
);
alter table Cliente AUTO_INCREMENT=1;

create table Forma_de_pagamento (
	idFormaPagamento INT PRIMARY KEY AUTO_INCREMENT,
    FormaPagamento VARCHAR(45)
);
alter table Forma_de_pagamento AUTO_INCREMENT=1;


CREATE table Fornecedor (
	idFornecedor INT PRIMARY KEY AUTO_INCREMENT,
    RazaoSocial VARCHAR(60) not null unique,
    NomeFantasia VARCHAR(45),
    CNPJ VARCHAR(15) not null unique,
    Email VARCHAR(50) not null,
    Telefone VARCHAR(11) not null,
    Endereco VARCHAR(60) not null,
    CEP VARCHAR(8) not null,
    Cidade VARCHAR(45) not null,
    Estado CHAR(2) not null
);
alter table Fornecedor AUTO_INCREMENT=1;


create table Localizacao_Loja (
	idLocalizacao_Loja INT PRIMARY KEY AUTO_INCREMENT,
    Telefone VARCHAR(11) not null,
    Endereco VARCHAR(60) not null,
    CEP VARCHAR(8) not null,
    Cidade VARCHAR(45) not null,
    Estado CHAR(2) not null
);
alter table Localizacao_Loja AUTO_INCREMENT=1;

create table Produtos (
	idProdutos INT PRIMARY KEY AUTO_INCREMENT,
    NomeProduto VARCHAR(45) not null unique,
    Marca VARCHAR(45) not null,
    ValorProduto FLOAT not null,
    Descricao VARCHAR(60)
);
alter table Produtos AUTO_INCREMENT=1;

create table Veiculo (
	Placa VARCHAR(7) PRIMARY KEY unique,
    Marca VARCHAR(45) not null,
    Modelo VARCHAR(45) not null,
    AnoFabricacao CHAR(4) not null,
    Cor VARCHAR(45),
    ClienteIdCliente INT,
    Constraint fk_Veiculo_Cliente FOREIGN KEY (ClienteIdCliente) references Cliente(idCliente)
);

create table Servico (
	idServico INT PRIMARY KEY AUTO_INCREMENT,
    Nome VARCHAR(45) not null,
    Descricao VARCHAR(225) not null,
    ValorServico FLOAT not null -- valor por hora gasta
);
alter table Servico AUTO_INCREMENT=1;

create table Funcionario (
	idFuncionário INT PRIMARY KEY AUTO_INCREMENT,
    Pnome VARCHAR(45) not null,
    Sobrenome VARCHAR(80) not null,
    CPF VARCHAR(11) not null unique,
    DtNascimento DATE not null,
    DtContratacao DATE not null,
    Demissao boolean not null,
    Salario FLOAT not null,
    Email VARCHAR(50),
    Telefone VARCHAR(11) not null,
    Endereco VARCHAR(60) not null,
    CEP VARCHAR(8) not null,
    Cidade VARCHAR(45) not null,
    Estado CHAR(2) not null,
    LojaAtuacao INT not null,
    Constraint fk_Loja_Funcionario FOREIGN KEY (LojaAtuacao) references Localizacao_Loja(idLocalizacao_Loja)
);
alter table Funcionario AUTO_INCREMENT=1;

create table Tem_Agenda (
	FuncionarioIdFuncionario INT,
    ServicoIdServico INT,
    Agenda DATETIME,
    Horas_Servico Time not null, -- Seria quantas horas levará para realizar o serviço
    Constraint pk_Agenda PRIMARY KEY (FuncionarioIdFuncionario, ServicoIdServico),
    Constraint fk_Agenda_Funcionario FOREIGN KEY (FuncionarioIdFuncionario) references Funcionario(idFuncionário),
    Constraint fk_Agenda_Servico FOREIGN KEY (ServicoIdServico) references Servico(idServico)
);

create table Tem_Estoque (
	ProdutoIdProduto INT,
    FornecedorIdFornecedor INT,
    EstoqueLoja INT,
    Quantidade INT,
    DtEntrada DATE,
    Constraint fk_Estoque_Produto FOREIGN KEY (ProdutoIdProduto) references Produtos(idProdutos),
    Constraint fk_Estoque_Fornecedor FOREIGN KEY (FornecedorIdFornecedor) references Fornecedor(idFornecedor),
    Constraint fk_Estoque_Loja FOREIGN KEY (EstoqueLoja) references Localizacao_Loja(idLocalizacao_Loja)
);

create table Faturamento (
	idFaturamento INT PRIMARY KEY AUTO_INCREMENT,
    ServicoIdServico INT,
    ProdutoIdProduto INT,
    VeiculoPlaca VARCHAR(7) not null,
    DtFaturamento DATE not null,
    ValorTotal FLOAT not null,
    PagamentoIdPagamento INT not null,
    StatusFaturamento ENUM('Aguardando Pagamento', 'Aguardando Conserto', 'Pago', 'Cancelado') default 'Aguardando Conserto',
	Detalhamento VARCHAR(225) not null, -- Explicação do que será feito, se precisa de peças; Caso demore, o motivo.
    Constraint fk_Faturamento_Servico FOREIGN KEY (ServicoIdServico) references Servico(idServico),
    Constraint fk_Faturamento_Produto FOREIGN KEY (ProdutoIdProduto) references Produtos(idProdutos),
    Constraint fk_Faturamento_Veiculo FOREIGN KEY (VeiculoPlaca) references Veiculo(Placa),
    Constraint fk_Faturamento_Pagamento FOREIGN KEY (PagamentoIdPagamento) references Forma_de_pagamento(idFormaPagamento)    
);
alter table Faturamento AUTO_INCREMENT=1;