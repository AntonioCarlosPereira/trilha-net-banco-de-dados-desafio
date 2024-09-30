SELECT nome, ano
FROM filmes;

SELECT nome, ano
FROM filmes
ORDER BY ano ASC;

SELECT nome, ano, duracao
FROM filmes
WHERE nome = 'De Volta para o Futuro';

SELECT nome, ano
FROM filmes
WHERE ano = 1997;

SELECT nome, ano
FROM filmes
WHERE ano > 2000;

SELECT nome, ano, duracao
FROM filmes
WHERE duracao > 100 AND duracao < 150
ORDER BY duracao ASC;

SELECT ano, COUNT(*) AS quantidade_filmes
FROM filmes
GROUP BY ano
ORDER BY ano DESC; -- Corrigido para ordenar por ano

SELECT PrimeiroNome, UltimoNome
FROM atores
WHERE genero = 'M';

SELECT PrimeiroNome, UltimoNome
FROM atores
WHERE genero = 'F'
ORDER BY PrimeiroNome ASC;

SELECT F.Nome, G.Genero
FROM Filmes F
INNER JOIN Generos G
INNER JOIN FilmesGenero FG ON G.Id = FG.IdGenero ON F.Id = FG.IdFilme

SELECT F.Nome, G.Genero
FROM Filmes F
INNER JOIN Generos G
INNER JOIN FilmesGenero FG
ON G.Id = FG.IdGenero
ON F.Id = FG.IdFilme
WHERE G.Genero = 'Mistério'

SELECT F.Nome, A.PrimeiroNome, A.UltimoNome, EF.Papel
FROM Filmes F
INNER JOIN Atores A
INNER JOIN ElencoFilme EF
ON A.Id = EF.IdAtor
ON F.Id = EF.IdFilme