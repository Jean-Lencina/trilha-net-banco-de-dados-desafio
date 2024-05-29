-- 1

SELECT Nome, Ano FROM Filmes

-- 2

SELECT Nome, Ano, Duracao FROM Filmes ORDER BY Ano

-- 3

SELECT * FROM Filmes WHERE Id = 28

-- 4

SELECT Nome, Ano, Duracao FROM Filmes WHERE Ano = 1997

-- 5

SELECT Nome, Ano, Duracao FROM Filmes WHERE Ano > 2000

-- 6

SELECT Nome, Ano, Duracao FROM Filmes WHERE Duracao > 100 and Duracao < 150

-- 7

SELECT Ano, Count(Ano) Quantidade FROM Filmes GROUP BY Ano ORDER BY Quantidade DESC

-- 8 

SELECT PrimeiroNome, UltimoNome, Genero FROM Atores WHERE Genero = 'M'

-- 9

SELECT PrimeiroNome, UltimoNome, Genero FROM Atores WHERE Genero = 'F' ORDER BY PrimeiroNome

-- 10

SELECT DISTINCT Nome, Genero FROM Filmes 
join FilmesGenero ON Filmes.Id = FilmesGenero.IdGenero 
join Generos ON FilmesGenero.IdGenero = Generos.Id ORDER BY Genero

-- 11

SELECT DISTINCT Nome, Genero FROM Filmes 
join FilmesGenero ON Filmes.Id = FilmesGenero.IdGenero 
join Generos ON FilmesGenero.IdGenero = Generos.Id WHERE Genero = 'Mistério'

-- 12

SELECT DISTINCT Nome, PrimeiroNome, UltimoNome, Papel FROM Filmes
join ElencoFilme ON Filmes.Id = ElencoFilme.Id
join Atores ON ElencoFilme.Id = Atores.Id