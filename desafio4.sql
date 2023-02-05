SELECT
	u.user_name AS usuario,
	IF(MAX(h.play_history) >= '2021-01-01', 'Usuário ativo', 'Usuário inativo') AS status_usuario
FROM SpotifyClone.users AS u
INNER JOIN SpotifyClone.history AS h
ON h.user_id = u.user_id
GROUP BY u.user_id
ORDER BY usuario ASC;