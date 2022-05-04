SELECT "Formato", COUNT(*)
	FROM public.livros
	GROUP BY "Formato";

-- Retorna a quantidade de livros em cada formato
