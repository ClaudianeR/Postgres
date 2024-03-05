CREATE  TABLE carros (
	-- serial auto incremento atualiza o valor do id automatico
	id SERIAL primary key,
	-- NOT NULL: a coluna não pode ser vazia
	nome VARCHAR (255) NOT NULL,
	modelo VARCHAR (255) NOT NULL,
	ano INTEGER  NOT NULL, -- min 1900 max 2024 , estabelece um intervalo de anos 
	preco DECIMAL (10,2) NOT NULL,
	marca VARCHAR (255) NOT NULL,
	acessorios VARCHAR (255), -- não é obrigatorio
	fabricacao BOOLEAN DEFAULT TRUE
	
	-- excluir tabela = DROP TABLE
	
	-- inserir dados na tabela 
	INSERT INTO carros (nome, modelo, ano, preco, marca, acessorios, fabricacao)
	VALUES ('Gol','GTR', 2002, 45500.00, 'volkswagen','som, calota, aro 18', false);
	
	-- selecionando todas as colunas
	Select * FROM carros;
	
	-- selecionando algumas colunas, atalho para mostrar as colunas (crtl + espaco)
	SELECT id, ano, preco FROM public.carros;
	
	-- inserindo varias linhas de uma só vez 
	
	INSERT INTO carros (nome, modelo, ano, preco, marca, fabricacao)
	VALUES ('onix','premier', 2023, 75500.00, 'chevrolet', true),
	       ('corolla','altis', 2024, 180500.00, 'Toyota', false);
	
	
	
	-- select com ordenação 
	select * from carros order by id desc
	-- select com ordenação na string
	select * from carros order by nome asc
	-- select com condição 
	select * from carros where fabricacao is false
	-- select com condição e ordenação
	select *from carros where fabricacao is false order by nome asc
);
