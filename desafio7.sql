SELECT
	ar.artist_name AS artista,
	al.album_name AS album,
    COUNT(f.user_id) AS seguidores
FROM SpotifyClone.albums AS al
INNER JOIN SpotifyClone.artists AS ar
ON al.artist_id = ar.artist_id
INNER JOIN SpotifyClone.follows AS f
ON f.artist_id = al.artist_id
GROUP BY artista, album
ORDER BY seguidores DESC, artista ASC, album ASC;