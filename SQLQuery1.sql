create database vendas --Criar base de dados vendas

use vendas	--Usar base de dados vendas

create table categorias (
	categoriaId integer not null identity primary key,
	descricao varchar(30) null
) --Criar tabela categorias(colunas nome: categoria Tipo: numero inteiro Valor: Não Nulo Tipo: Sequencial, Chave Primaria
  --coluna nome: descricao Tipo: varchar(texto de 30 caracteres) Valor: Pode ser Nulo
  --)

insert into categorias (descricao) Values ('Alimentação') --inserir dentro de categorias(descricao) valores (Alimentação)
Insert into categorias (descricao) Values ('Bazar'), ('Brinquedo'), ('Higiene') --inseie dentro de categorias (descricao) Valores (Bazar) e (Brinquedo) e (Higiene)

select * from categorias --Select todos da tabela categorias

select categoriaId, Descricao FROM categorias --Selecionar categoriaID e Descricao da tabela categorias
select Descricao FROM categorias -- Selecionar Descr~icao da tabela categorias

select categoriaId,
	   Descricao
	From categorias
	WHERE categoriaID <2
	--WHERE Descricao like 'B%' Trazer descricao contendo no começo B
	--WHERE Descricao like '%ar' Trazer descricao contendo no final ar
	--WHERE Descricao = 'Bazar' OR categoriaID=4 Trazer descricao igual Bazar ou categoriaID igual 4
	--WHERE categoriaID Between 1 anb 3 Trazer o intervalo entre 1 e 3
	--WHERE categoriaID NOT IN (1,3) Não trazer valores 1 e 3
	--WHERE categoria ID IN (1,3,4) Trazer varios valores ao mesmo tempo
	--WHERE categoria <= 2 Menor e igual a 2
	--WHERE categoriaID <2 Menor que 2
	--WHERE categoriaID = 3 Igual
	--WHERE categoriaID <> 2 Diferente
	--WHERE categoriaID >2 Maior que 2

	UPDATE categorias SET descricao = 'Bazar' WHERE categoriaID = 2 --atualizar tabela categorias setando descricao igual Bazar, onde categoriaID = 2

	select * from categorias --Selecionar todos da tabela categorias

	delete from categorias where categoriaId=2 --Deletar todos da tabela categorias onde caregoriaID igual 2

	select * from categorias --Selecionar todos da tabela categorias

	delete from categorias --Apagar toda a tabela categoria

	insert into categorias (descricao) values ('GPU'), ('CPU'), ('SSD'), ('RAM') --Adicionar tabela descricao valores GPU,CPU,SSD,RAM

	dbcc checkident ('categorias', reseed, 0); --Reiniciar o contador de auto incremento(AI)

	sp_helpdb vendas --Traz a o nome da categoria, tamanho(MB), Proprietario, dbid, Criado(data), Status(online ou offline: etc., nivel de compatibilidade)

	sp_help categorias --Traz as colunas, quando foi criado a tabela categorias, e outras informações...

	select *
		from categorias
		order by categoriaId
		--Mesma ordenação

	select *
		from categorias
		order by categoriaId desc
		--Ordem 3,2,1 ou Z até A

	select *
		from categorias
		order by categoriaId asc
		-- Ordem 1,2,3 ou A até Z


	select * into #TEMP01
		from categorias
		--Criar uma tabela temporaria(podendo exibir relatórios, etc, assim podendo desconciderar ela no futuro)
	select * into ##TEMP02
		from categorias
		--Criar uma tabela Global(Para usar de fora da seção)

	insert into #TEMP01 (descricao) values ('Teste TEMP')
	--Tudo inserido fica somente na tabela temporaria

	insert into ##TEMP02 (descricao) values ('Teste GLOBAL')
	--Tudo inserido fica somente na tabela temporaria

	select * from #TEMP01
	select * from ##TEMP02

	drop table #TEMP01 --Podendo utilizar de forma normal, inclusive apagar tabela temporaria
	drop table ##TEMP02 --Podendo utilizar de forma normal, inclusive apagar tabela global


	CREATE TABLE #Teste (
		campo1 int not null identity primary key,
		campo2 varchar(30) null
		)
		-- criando tabela temporaria
	CREATE TABLE ##Teste (
		campo1 int not null identity primary key,
		campo2 varchar(30) null
		)
		--criando tabela global
	select * from #Teste --selecionando todos da tabela temporaria
	select * from ##Teste -- selecionando todos da tabela global

	drop table #Teste --deletando tabela temporaria
	drop table ##Teste --deletando tabela global

	use master --conectar no banco de dados master, para podermos deletar outros bancos ou mesmo usar banco master

	drop database BDTeste --deletando banco BDTeste
	drop database vendas --deletando banco vendas


