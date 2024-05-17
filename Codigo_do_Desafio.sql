
--Buscar o nome e ano dos filmes
select 
	Nome,
	Ano
from Filmes

--Busca o nome e ano dos filmes,ordenado por ordem crescente pelo ano
select 
	Nome,
	Ano
from Filmes
order by Ano ASC


--Buscar pelo filme de volta para o futuro,trazendo o nome, ano e a duração
select * from Filmes Where Nome = 'De volta para o futuro'


--Buscar os filmes lançados em 1997
select * from Filmes Where Ano = 1997


--Buscar os filmes lançados APÓS o ano 2000
select * from Filmes
Where Ano >= 2000


--Buscar os filmes com a duracao maior que 100 e menor que 150
select * from Filmes
where Duracao > 100 and Duracao < 150
order by Duracao asc 


--Buscar a quantidade de filmes lançadas no ano, agrupando por ano, ordenando pela Quantidade em ordem decrescente
SELECT Ano, COUNT(1) Quantidade FROM Filmes GROUP BY Ano 
order by Quantidade desc

--Buscar os Atores do gênero masculino,retornando o primeiroNome,UltimoNome
select * From Atores
where Genero = 'M'


-- Buscar os Atores do gênero feminino, retornando o PrimeiroNome, UltimoNome, e ordenando pelo PrimeiroNome
select * From Atores
where Genero = 'F'
order by PrimeiroNome asc


-- Buscar o nome do filme e o gênero
SELECT 
    f.Nome, 
    g.Genero
FROM 
    Filmes f
INNER JOIN 
    FilmesGenero fg ON f.Id = fg.IdFilme
INNER JOIN 
    Generos g ON fg.IdGenero = g.Id;



select Duracao from Filmes  


--Continuar parei do 11
SELECT Ano, COUNT(1) Quantidade FROM Filmes GROUP BY Ano 
order by Quantidade desc



--Buscar o nome do filme e o gênero do tipo "Mistério"
SELECT 
    f.Nome, 
    g.Genero
FROM 
    Filmes f
INNER JOIN 
    FilmesGenero fg ON f.Id = fg.IdFilme
INNER JOIN 
    Generos g ON fg.IdGenero = g.Id
	where
		g.genero = 'Mistério'

-- Buscar o nome do filme e os atores, trazendo o PrimeiroNome, UltimoNome e seu Papel
select
	F.Nome,
	A.PrimeiroNome,
	A.UltimoNome,
	E.Papel
from
	Filmes F
Inner join Atores A ON F.Id = A.Id
inner join ElencoFilme E on F.id =E.Id


	







