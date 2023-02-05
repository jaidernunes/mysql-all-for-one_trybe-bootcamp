SELECT
	song_name AS cancao,
	COUNT(h.song_id) AS reproducoes
FROM SpotifyClone.songs AS s
INNER JOIN SpotifyClone.history AS h
ON h.song_id = s.song_id
GROUP BY cancao
ORDER BY reproducoes DESC, song_name ASC
LIMIT 2;