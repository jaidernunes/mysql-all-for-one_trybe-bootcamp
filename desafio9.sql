SELECT 
	COUNT(user_id) AS quantidade_musicas_no_historico
FROM SpotifyClone.history
WHERE user_id = 1;