--1 - Buscar o nome e o ano dos filmes.
SELECT Nome, Ano FROM Filmes

--2 - Buscar o nome e o ano dos filmes, ordenando em ordem crescente pelo ano.
SELECT Nome, Ano FROM Filmes ORDER BY Ano ASC

--3 - Buscar pelo filme De Volta Para o Futuro, trazendo o nome, o ano e a duração.
SELECT Nome, Ano, Duracao FROM Filmes WHERE Nome = 'De Volta Para o Futuro'

--4 - Buscar os filmes lançados em 1997.
SELECT Nome, Ano, Duracao FROM Filmes WHERE Ano = 1997

--5 - Buscar os filmes lançados após o ano 2000.
SELECT Nome, Ano, Duracao FROM Filmes WHERE Ano > 2000

--6 - Buscar os filmes com duração maior que 100 e menor que 150 minutos, ordenando pela duração em ordem crescente.
SELECT Nome, Ano, Duracao FROM Filmes WHERE Duracao > 100 AND Duracao < 150 ORDER BY Duracao ASC

--7 - Buscar a quantidade de filmes lançados no ano, agrupando por ano e ordenando pela quantidade em ordem decrescente.
SELECT Ano, COUNT(*) Quantidade FROM Filmes GROUP BY Ano ORDER BY Quantidade DESC

--8 - Buscar os atores do sexo masculino, retornando as colunas PrimeiroNome e UltimoNome.
SELECT PrimeiroNome, UltimoNome FROM Atores WHERE Genero = 'M'

--9 Buscar os atores do sexo feminino, retornando as colunas PrimeiroNome e UltimoNome, e ordenando pelo primeiro nome em ordem crescente.
SELECT PrimeiroNome, UltimoNome FROM Atores WHERE Genero = 'F' ORDER BY PrimeiroNome ASC

--10
SELECT Filmes.Nome, Generos.Genero 
FROM Filmes 
INNER JOIN FilmesGenero 
ON Filmes.Id = FilmesGenero.IdFilme
INNER JOIN Generos
ON Generos.Id = FilmesGenero.IdGenero

--11
SELECT Filmes.Nome, Generos.Genero 
FROM Filmes 
INNER JOIN FilmesGenero 
ON Filmes.Id = FilmesGenero.IdFilme
INNER JOIN Generos
ON Generos.Id = FilmesGenero.IdGenero
WHERE Genero = 'Mistério'

--12
SELECT Filmes.Nome, Atores.PrimeiroNome, Atores.UltimoNome, ElencoFilme.Papel
FROM Filmes
INNER JOIN ElencoFilme
ON Filmes.Id = ElencoFilme.IdFilme
INNER JOIN Atores
ON Atores.Id = ElencoFilme.IdAtor