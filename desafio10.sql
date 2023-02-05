SELECT
	s.song_name AS nome,
	COUNT(h.song_id) AS reproducoes
FROM SpotifyClone.songs AS s
INNER JOIN SpotifyClone.history AS h
ON h.song_id = s.song_id
INNER JOIN SpotifyClone.users AS u
ON u.user_id = h.user_id
WHERE u.plan_id IN (1, 4)
GROUP BY nome
ORDER BY nome ASC;