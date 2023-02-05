SELECT 
	MAX(song_id) AS cancoes,
    MAX(ar.artist_id) AS artistas,
    MAX(al.album_id) AS albuns
FROM SpotifyClone.songs
INNER JOIN SpotifyClone.artists AS ar
INNER JOIN SpotifyClone.albums AS al;