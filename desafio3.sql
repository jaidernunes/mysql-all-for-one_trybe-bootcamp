SELECT 
    user_name AS usuario,
    COUNT(h.user_id) AS qt_de_musicas_ouvidas,
    ROUND(SUM(s.duration)/60,2) AS total_minutos
FROM SpotifyClone.users AS u
INNER JOIN SpotifyClone.history AS h
ON h.user_id = u.user_id
INNER JOIN SpotifyClone.songs AS s
ON s.song_id = h.song_id
GROUP BY h.user_id
ORDER BY u.user_name ASC;