SELECT
  spotify_artist.artist_name AS 'artista',
  spotify_album.album_name AS 'album'
FROM
  SpotifyClone.artist AS spotify_artist
  INNER JOIN SpotifyClone.album AS spotify_album ON spotify_artist.artist_id = spotify_album.artist_id
WHERE
  spotify_artist.artist_name = 'Walter Phoenix'
ORDER BY
  spotify_album.album_name;