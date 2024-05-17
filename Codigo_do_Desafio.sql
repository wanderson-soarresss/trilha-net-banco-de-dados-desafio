
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


--Buscar pelo filme de volta para o futuro,trazendo o nome, ano e a dura��o
select * from Filmes Where Nome = 'De volta para o futuro'


--Buscar os filmes lan�ados em 1997
select * from Filmes Where Ano = 1997


--Buscar os filmes lan�ados AP�S o ano 2000
select * from Filmes
Where Ano >= 2000


--Buscar os filmes com a duracao maior que 100 e menor que 150
select * from Filmes
where Duracao > 100 and Duracao < 150
order by Duracao asc 


--Buscar a quantidade de filmes lan�adas no ano, agrupando por ano, ordenando pela Quantidade em ordem decrescente
SELECT Ano, COUNT(1) Quantidade FROM Filmes GROUP BY Ano 
order by Quantidade desc

--Buscar os Atores do g�nero masculino,retornando o primeiroNome,UltimoNome
select * From Atores
where Genero = 'M'


-- Buscar os Atores do g�nero feminino, retornando o PrimeiroNome, UltimoNome, e ordenando pelo PrimeiroNome
select * From Atores
where Genero = 'F'
order by PrimeiroNome asc


-- Buscar o nome do filme e o g�nero
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



--Buscar o nome do filme e o g�nero do tipo "Mist�rio"
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
		g.genero = 'Mist�rio'

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


	







