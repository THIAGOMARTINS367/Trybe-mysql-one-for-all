SELECT
  spotify_artist.artist_name AS 'artista',
  spotify_album.album_name AS 'album',
  COUNT(spotify_following.user_id) AS seguidores
FROM
  SpotifyClone.album AS spotify_album
  INNER JOIN SpotifyClone.artist AS spotify_artist
  ON spotify_album.artist_id = spotify_artist.artist_id
  INNER JOIN SpotifyClone.following AS spotify_following
  ON spotify_artist.artist_id = spotify_following.artist_id
GROUP BY
  spotify_album.album_id
ORDER BY
  seguidores DESC,
  spotify_artist.artist_name,
  spotify_album.album_name;