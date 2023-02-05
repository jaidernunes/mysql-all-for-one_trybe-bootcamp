SELECT
	ar.artist_name AS artista,
	al.album_name AS album
FROM SpotifyClone.albums AS al
INNER JOIN SpotifyClone.artists AS ar
ON al.artist_id = ar.artist_id
WHERE ar.artist_name = 'Elis Regina'
ORDER BY album ASC;