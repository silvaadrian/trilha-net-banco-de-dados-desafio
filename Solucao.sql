USE Filmes;
/* Objetivo 1 */

SELECT 
	Nome,Ano
		FROM
			Filmes;

/* Objetivo 2 */

SELECT 
	Nome,Ano,Duracao
		FROM
			Filmes
				ORDER BY Ano ASC;

/* Objetivo 3 */

SELECT 
	Nome,Ano,Duracao
		FROM
			Filmes
				WHERE Nome = 'De Volta para o Futuro';

/* Objetivo 4 */

SELECT 
	Nome,Ano,Duracao
		FROM
			Filmes
				WHERE Ano = 1997;

/* Objetivo 5 */

SELECT 
	Nome,Ano,Duracao
		FROM
			Filmes
				WHERE Ano > 2000;


/* Objetivo 6 */

SELECT 
	Nome,Ano,Duracao
		FROM
			Filmes
				WHERE Duracao > 100 and Duracao < 150
					ORDER BY Duracao ASC;

/* Objetivo 7 */

SELECT 
	Ano, Count(*) Quantidade
		FROM
			Filmes
					GROUP BY Ano
						ORDER BY Quantidade DESC;

/* Objetivo 8 */

SELECT 
	PrimeiroNome,UltimoNome, Genero
		FROM
			Atores
				WHERE Genero = 'M';


/* Objetivo 9 */

SELECT 
	PrimeiroNome,UltimoNome, Genero
		FROM
			Atores
				WHERE Genero = 'F'
					ORDER BY PrimeiroNome;

/* Objetivo 10 */

SELECT 
	f.Nome,g.Genero
		FROM
			Filmes f
				INNER JOIN 
					FilmesGenero fg
						ON 
							fg.IdFilme = f.Id
								INNER JOIN 
									Generos g
										ON
											g.Id = fg.IdGenero/

/* Objetivo 11 */

SELECT 
	f.Nome,g.Genero
		FROM
			Filmes f
				INNER JOIN 
					FilmesGenero fg
						ON 
							fg.IdFilme = f.Id
								INNER JOIN 
									Generos g
										ON
											g.Id = fg.IdGenero
												WHERE
													g.Genero = 'Mistério';

/* Objetivo 12 */

SELECT 
	f.Nome,a.PrimeiroNome,a.UltimoNome,ef.Papel
		FROM
			Filmes f
				INNER JOIN 
					ElencoFilme ef
							ON
								ef.IdFilme = f.Id
										INNER JOIN 
												Atores a
													ON
														a.Id = ef.IdAtor
